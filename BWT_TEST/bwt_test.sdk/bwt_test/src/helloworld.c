/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
#include "bwt_ip.h"
#include "bwt.h"

/**************************** user definitions ********************************/
#define CHANNEL 1
//Cordic processor base addres redefinition
#define BWT_BASE_ADDR XPAR_BWT_IP_0_S00_AXI_BASEADDR

//Cordic processor registers' offset redefinition
#define CONTROL_REG_OFFSET BWT_IP_S00_AXI_SLV_REG0_OFFSET 		//start
#define INPUT_STRING_REG_OFFSET BWT_IP_S00_AXI_SLV_REG1_OFFSET	//input, uB -> fpga
#define STATUS_REG_OFFSET BWT_IP_S00_AXI_SLV_REG2_OFFSET		//valid
#define RESULT_REG_OFFSET BWT_IP_S00_AXI_SLV_REG3_OFFSET		//output, fpga -> uB
//#define RESULT_REG_SIN(param) ((u32)param & (u32)(0x00000FFF))
//#define RESULT_REG_COS(param) (((u32)param & (u32)(0x0FFF0000)) >> 16 )
//#define LED1 0x80									/* Initial LED value - XX0000XX */
//#define LED_DELAY 1000000							/* Software delay length */
/***************************** Main function *********************************/

char8 InputStr[LENGTH_STR] = "Bananabananabananabananabananab$";
char8 uB_BWT_Str[LENGTH_STR];// = "b$nnnnnnnnnnbbbbBaaaaaaaaaaaaaaa";
char8 FPGA_BWT_Str[LENGTH_STR];


int main(){
	int status;
	XGpio inputCharGpio, outputCharGpio, ledGpio;
	u8 LoopCounter;
	u8 StrResult = 0;
	u8 ctrl_tgl = 0;
	char8 input_char;

	/* Initialize driver for the input string GPIOe */
	status = XGpio_Initialize(&inputCharGpio, XPAR_AXI_INPUT_STRING_CHAR_DEVICE_ID);
	if (status != XST_SUCCESS) {
	goto FAILURE;
	} XGpio_SetDataDirection(&inputCharGpio, CHANNEL, 0xFF);

	/* Initialize driver for the output string GPIO */
	status = XGpio_Initialize(&outputCharGpio, XPAR_AXI_OUTPUT_STRING_CHAR_DEVICE_ID);
	if (status != XST_SUCCESS) {
	goto FAILURE;
	} XGpio_SetDataDirection(&outputCharGpio, CHANNEL, 0x00);

	//XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, 0);

	/* Initialize driver for LEDs */
	status = XGpio_Initialize(&ledGpio, XPAR_AXI_GPIO_LED_DEVICE_ID);
	if (status != XST_SUCCESS) {
	goto FAILURE;
	} XGpio_SetDataDirection(&ledGpio, CHANNEL, 0x00);
	XGpio_DiscreteWrite(&ledGpio, CHANNEL, 0xff);



    init_platform();

    print("Enter angle (in degrees, two digits 00 to 90)");
    input_char = inbyte();
    print("\n\r");
    //print(input_char);
    print("\n\r");


	//Start bwt processor - pulse start bit in control register and send string to bwt

	for (LoopCounter = 0; LoopCounter < LENGTH_STR; LoopCounter++)
	{
		ctrl_tgl = !ctrl_tgl;
		BWT_IP_mWriteReg(BWT_BASE_ADDR, INPUT_STRING_REG_OFFSET, InputStr[LoopCounter]);
    BWT_IP_mWriteReg(BWT_BASE_ADDR, CONTROL_REG_OFFSET, ctrl_tgl);
		//XGpio_DiscreteWrite(&ledGpio, CHANNEL, led1);
		/* Flip LEDs. */
		//led1 = ~led1;
	}
	print(InputStr);
	print("\n\r");

//	BWT_IP_mWriteReg(BWT_BASE_ADDR, INPUT_STRING_REG_OFFSET, '$');
//	BWT_IP_mWriteReg(BWT_BASE_ADDR, CONTROL_REG_OFFSET, 0);
//  XGpio_DiscreteWrite(&ledGpio, CHANNEL, 0x0F);

	LoopCounter = 0;
	XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, 0xa);

	for(LoopCounter = 0; LoopCounter < LENGTH_STR; LoopCounter++)
	{
			FPGA_BWT_Str[LoopCounter] = BWT_IP_mReadReg(BWT_BASE_ADDR, RESULT_REG_OFFSET);
			XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, FPGA_BWT_Str[LoopCounter]);
			//print((char)FPGA_BWT_Str[LoopCounter]);
			//print("\n\r");
	}

	print("FPGA BWT: ");
	print(FPGA_BWT_Str);
	print("\n\r");

	XGpio_DiscreteWrite(&ledGpio, CHANNEL, 0x01);
	XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, 0xf);

	BWT(InputStr,uB_BWT_Str);

	print("BWT: ");
	print(uB_BWT_Str);
	print("\n\r");

	XGpio_DiscreteWrite(&ledGpio, CHANNEL, 0x02);
	XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, 0xc);

	for(LoopCounter = 0; LoopCounter < LENGTH_STR; LoopCounter++)
	{
		XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, uB_BWT_Str[LoopCounter]);
		if (uB_BWT_Str[LoopCounter] != FPGA_BWT_Str[LoopCounter])
		{
			StrResult = 1;
			XGpio_DiscreteWrite(&ledGpio, CHANNEL, 0xf0);
		}
		else
			StrResult = 0;
	}


	XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, 0xf);

	XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, StrResult);

	XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, 0xf);


	if (!StrResult)
	{

		XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, 0xb);
		XGpio_DiscreteWrite(&ledGpio, CHANNEL, 0x0f);
	}


    print("Sinus value is ");

    print("\n\r");
    print("Cosinus value is ");

    print("\n\r");
    print("\n\r");
		//Read data - gpio input
		//data = XGpio_DiscreteRead(&inputCharGpio, CHANNEL);

		//Send to gpio
		//XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, data);


		//Wait for ready bit in status register
		//while( (BWT_IP_mReadReg(BWT_BASE_ADDR, STATUS_REG_OFFSET) & 0x01) == 0);

		//Get results
		//result = BWT_IP_mReadReg(BWT_BASE_ADDR, RESULT_REG_OFFSET);

		//Send to GPIO
	/* Failure or end trap */
    cleanup_platform();
	FAILURE:
	while(1) break;
}