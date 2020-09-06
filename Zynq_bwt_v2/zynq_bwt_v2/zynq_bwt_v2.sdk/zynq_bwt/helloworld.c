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
#define CONTROL_REG_OFFSET BWT_IP_S00_AXI_SLV_REG0_OFFSET		//start
#define INPUT_STRING_REG_OFFSET BWT_IP_S00_AXI_SLV_REG1_OFFSET	//input, uB -> fpga

#define STATUS_REG_OFFSET BWT_IP_S00_AXI_SLV_REG9_OFFSET		//valid
//#define RESULT_REG_OFFSET BWT_IP_S00_AXI_SLV_REG3_OFFSET		//output, fpga -> uB
//#define LED1 0x80									/* Initial LED value - XX0000XX */
//#define LED_DELAY 1000000							/* Software delay length */
//Cordic processor bits masks
#define CONTROL_REG_START_MASK (u32)(0x01)
#define STATUS_REG_READY_MASK (u32)(0x01)
/***************************** Main function *********************************/

char8 InputStr[LENGTH_STR] =      "Bananananananananananananananan$";
char8 uB_BWT_Str[LENGTH_STR];// = "b$nnnnnnnnnnbbbbBaaaaaaaaaaaaaaa";
char8 FPGA_BWT_Str[LENGTH_STR];
char8 TEST_Str[LENGTH_STR];


int main(){
	int status;
	XGpio inputCharGpio, outputCharGpio, ledGpio;
	u32 LoopCounter;
//	u32 InBWT;
	u32 InBWT[8];
	u32 OutFPGA[8];
	u8 StrResult = 0;
	u8 ctrl_tgl = 0;
	char8 input_char;
	char8 result[2];
	u32 state[3];

	/* Initialize driver for the input string GPIOe */
	//status = XGpio_Initialize(&inputCharGpio, XPAR_AXI_INPUT_STRING_CHAR_DEVICE_ID);
//	if (status != XST_SUCCESS) {
//	goto FAILURE;
//	} XGpio_SetDataDirection(&inputCharGpio, CHANNEL, 0xFF);

//	/* Initialize driver for the output string GPIO */
//	//status = XGpio_Initialize(&outputCharGpio, XPAR_AXI_OUTPUT_STRING_CHAR_DEVICE_ID);
//	if (status != XST_SUCCESS) {
//	goto FAILURE;
//	} XGpio_SetDataDirection(&outputCharGpio, CHANNEL, 0x00);

	//XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, 0);

	/* Initialize driver for LEDs */
	status = XGpio_Initialize(&ledGpio, XPAR_AXI_GPIO_0_DEVICE_ID);
	if (status != XST_SUCCESS) {
	goto FAILURE;
	} XGpio_SetDataDirection(&ledGpio, CHANNEL, 0x00);
	XGpio_DiscreteWrite(&ledGpio, CHANNEL, 0xff);



    init_platform();

    print("Press any key to start ");
    inbyte();
    print("\n\r");
    //print(input_char);
    print("\n\r");

//    BWT_IP_mWriteReg(BWT_BASE_ADDR, INPUT_STRING_REG_OFFSET, 0x4200);
//
//    result[0] = (char8)((BWT_IP_mReadReg(BWT_BASE_ADDR, RESULT_REG_OFFSET))>>8);
//    result[1] = 'F';
//   	print(result);
//   	print("\n\r");


	//Start bwt processor - pulse start bit in control register and send string to bwt
    BWT_IP_mWriteReg(BWT_BASE_ADDR, CONTROL_REG_OFFSET, 0);
//    InBWT = (((u32)InputStr[0]) | (((u32)InputStr[1]) << 8) | (((u32)InputStr[2]) << 16) | (((u32)InputStr[3]) <<24));
    //Send data to data register of cordic processor
//    for(int = 0; i < LENGTH_STR; i++){
//
//
//    }
      InBWT[7] = (((u32)InputStr[0]) | (((u32)InputStr[1]) << 8) | (((u32)InputStr[2]) << 16) | (((u32)InputStr[3]) <<24));
      InBWT[6] = (((u32)InputStr[4]) | (((u32)InputStr[5]) << 8) | (((u32)InputStr[6]) << 16) | (((u32)InputStr[7]) <<24));
      InBWT[5] = (((u32)InputStr[8]) | (((u32)InputStr[9]) << 8) | (((u32)InputStr[10]) << 16) | (((u32)InputStr[11]) <<24));
      InBWT[4] = (((u32)InputStr[12]) | (((u32)InputStr[13]) << 8) | (((u32)InputStr[14]) << 16) | (((u32)InputStr[15]) <<24));
      InBWT[3] = (((u32)InputStr[16]) | (((u32)InputStr[17]) << 8) | (((u32)InputStr[18]) << 16) | (((u32)InputStr[19]) <<24));
      InBWT[2] = (((u32)InputStr[20]) | (((u32)InputStr[21]) << 8) | (((u32)InputStr[22]) << 16) | (((u32)InputStr[23]) <<24));
      InBWT[1] = (((u32)InputStr[24]) | (((u32)InputStr[25]) << 8) | (((u32)InputStr[26]) << 16) | (((u32)InputStr[27]) <<24));
      InBWT[0] = (((u32)InputStr[28]) | (((u32)InputStr[29]) << 8) | (((u32)InputStr[30]) << 16) | (((u32)InputStr[31]) <<24));


	BWT_IP_mWriteReg(BWT_BASE_ADDR, BWT_IP_S00_AXI_SLV_REG1_OFFSET, InBWT[0]);
	BWT_IP_mWriteReg(BWT_BASE_ADDR, BWT_IP_S00_AXI_SLV_REG2_OFFSET, InBWT[1]);
	BWT_IP_mWriteReg(BWT_BASE_ADDR, BWT_IP_S00_AXI_SLV_REG3_OFFSET, InBWT[2]);
	BWT_IP_mWriteReg(BWT_BASE_ADDR, BWT_IP_S00_AXI_SLV_REG4_OFFSET, InBWT[3]);
	BWT_IP_mWriteReg(BWT_BASE_ADDR, BWT_IP_S00_AXI_SLV_REG5_OFFSET, InBWT[4]);
	BWT_IP_mWriteReg(BWT_BASE_ADDR, BWT_IP_S00_AXI_SLV_REG6_OFFSET, InBWT[5]);
	BWT_IP_mWriteReg(BWT_BASE_ADDR, BWT_IP_S00_AXI_SLV_REG7_OFFSET, InBWT[6]);
	BWT_IP_mWriteReg(BWT_BASE_ADDR, BWT_IP_S00_AXI_SLV_REG8_OFFSET, InBWT[7]);

    	print("InputStr: ");
    	print(InputStr);
    	print("\n\r");
    //Start cordic processor - pulse start bit in control register
    	BWT_IP_mWriteReg(BWT_BASE_ADDR, CONTROL_REG_OFFSET, 1);
    	BWT_IP_mWriteReg(BWT_BASE_ADDR, CONTROL_REG_OFFSET, 0);
    //Wait for ready bit in status register
    	while( (BWT_IP_mReadReg(BWT_BASE_ADDR, STATUS_REG_OFFSET) & STATUS_REG_READY_MASK) == 0);
//        print("Press any key to start ");
//        inbyte();
//        print("\n\r");
    //Get results
    	OutFPGA[7] = BWT_IP_mReadReg(BWT_BASE_ADDR, BWT_IP_S00_AXI_SLV_REG10_OFFSET);
    	OutFPGA[6] = BWT_IP_mReadReg(BWT_BASE_ADDR, BWT_IP_S00_AXI_SLV_REG11_OFFSET);
    	OutFPGA[5] = BWT_IP_mReadReg(BWT_BASE_ADDR, BWT_IP_S00_AXI_SLV_REG12_OFFSET);
    	OutFPGA[4] = BWT_IP_mReadReg(BWT_BASE_ADDR, BWT_IP_S00_AXI_SLV_REG13_OFFSET);
    	OutFPGA[3] = BWT_IP_mReadReg(BWT_BASE_ADDR, BWT_IP_S00_AXI_SLV_REG14_OFFSET);
    	OutFPGA[2] = BWT_IP_mReadReg(BWT_BASE_ADDR, BWT_IP_S00_AXI_SLV_REG15_OFFSET);
    	OutFPGA[1] = BWT_IP_mReadReg(BWT_BASE_ADDR, BWT_IP_S00_AXI_SLV_REG16_OFFSET);
    	OutFPGA[0] = BWT_IP_mReadReg(BWT_BASE_ADDR, BWT_IP_S00_AXI_SLV_REG17_OFFSET);


    	state[0] = BWT_IP_mReadReg(BWT_BASE_ADDR, BWT_IP_S00_AXI_SLV_REG17_OFFSET);
    	state[1] = BWT_IP_mReadReg(BWT_BASE_ADDR, BWT_IP_S00_AXI_SLV_REG16_OFFSET);
    	state[2] = BWT_IP_mReadReg(BWT_BASE_ADDR, BWT_IP_S00_AXI_SLV_REG15_OFFSET);

		//for(LoopCounter = 0; LoopCounter < ; LoopCounter++)
		//{
			FPGA_BWT_Str[0] = (OutFPGA[0] & ((u32)0x000000FF));
			FPGA_BWT_Str[1] = (OutFPGA[0] & ((u32)0x0000FF00)) >> 8;
			FPGA_BWT_Str[2] = (OutFPGA[0] & ((u32)0x00FF0000)) >> 16;
			FPGA_BWT_Str[3] = (OutFPGA[0] & ((u32)0xFF000000)) >> 24;

			FPGA_BWT_Str[4] = (OutFPGA[1] & ((u32)0x000000FF));
			FPGA_BWT_Str[5] = (OutFPGA[1] & ((u32)0x0000FF00)) >> 8;
			FPGA_BWT_Str[6] = (OutFPGA[1] & ((u32)0x00FF0000)) >> 16;
			FPGA_BWT_Str[7] = (OutFPGA[1] & ((u32)0xFF000000)) >> 24;

			FPGA_BWT_Str[8] = (OutFPGA[2] & ((u32)0x000000FF));
			FPGA_BWT_Str[9] = (OutFPGA[2] & ((u32)0x0000FF00)) >> 8;
			FPGA_BWT_Str[10] = (OutFPGA[2] & ((u32)0x00FF0000)) >> 16;
			FPGA_BWT_Str[11] = (OutFPGA[2] & ((u32)0xFF000000)) >> 24;

			FPGA_BWT_Str[12] = (OutFPGA[3] & ((u32)0x000000FF));
			FPGA_BWT_Str[13] = (OutFPGA[3] & ((u32)0x0000FF00)) >> 8;
			FPGA_BWT_Str[14] = (OutFPGA[3] & ((u32)0x00FF0000)) >> 16;
			FPGA_BWT_Str[15] = (OutFPGA[3] & ((u32)0xFF000000)) >> 24;

			FPGA_BWT_Str[16] = (OutFPGA[4] & ((u32)0x000000FF));
			FPGA_BWT_Str[17] = (OutFPGA[4] & ((u32)0x0000FF00)) >> 8;
			FPGA_BWT_Str[18] = (OutFPGA[4] & ((u32)0x00FF0000)) >> 16;
			FPGA_BWT_Str[19] = (OutFPGA[4] & ((u32)0xFF000000)) >> 24;

			FPGA_BWT_Str[20] = (OutFPGA[5] & ((u32)0x000000FF));
			FPGA_BWT_Str[21] = (OutFPGA[5] & ((u32)0x0000FF00)) >> 8;
			FPGA_BWT_Str[22] = (OutFPGA[5] & ((u32)0x00FF0000)) >> 16;
			FPGA_BWT_Str[23] = (OutFPGA[5] & ((u32)0xFF000000)) >> 24;

			FPGA_BWT_Str[24] = (OutFPGA[6] & ((u32)0x000000FF));
			FPGA_BWT_Str[25] = (OutFPGA[6] & ((u32)0x0000FF00)) >> 8;
			FPGA_BWT_Str[26] = (OutFPGA[6] & ((u32)0x00FF0000)) >> 16;
			FPGA_BWT_Str[27] = (OutFPGA[6] & ((u32)0xFF000000)) >> 24;

			FPGA_BWT_Str[28] = (OutFPGA[7] & ((u32)0x000000FF));
			FPGA_BWT_Str[29] = (OutFPGA[7] & ((u32)0x0000FF00)) >> 8;
			FPGA_BWT_Str[30] = (OutFPGA[7] & ((u32)0x00FF0000)) >> 16;
			FPGA_BWT_Str[31] = (OutFPGA[7] & ((u32)0xFF000000)) >> 24;
		//}

    	print("FPGA BWT: ");
    	print(FPGA_BWT_Str);
    	print("\n\r");

    	XGpio_DiscreteWrite(&ledGpio, CHANNEL, 0x01);
//	for (LoopCounter = 0; LoopCounter < LENGTH_STR; LoopCounter++)
//	{
//		BWT_IP_mWriteReg(BWT_BASE_ADDR, INPUT_STRING_REG_OFFSET, InputStr[LoopCounter]);
//		BWT_IP_mWriteReg(BWT_BASE_ADDR, CONTROL_REG_OFFSET, 0x01);
//		BWT_IP_mWriteReg(BWT_BASE_ADDR, CONTROL_REG_OFFSET, 0);
//		//BWT_IP_mWriteReg(BWT_BASE_ADDR, CONTROL_REG_OFFSET, ctrl_tgl);
//		//XGpio_DiscreteWrite(&ledGpio, CHANNEL, led1);
//		/* Flip LEDs. */
//		//led1 = ~led1;
//	}

//	BWT_IP_mWriteReg(BWT_BASE_ADDR, CONTROL_REG_OFFSET, 0);

//	print("InputStr: ");
//	print(InputStr);
//	print("\n\r");

//	BWT_IP_mWriteReg(BWT_BASE_ADDR, INPUT_STRING_REG_OFFSET, '$');
//	BWT_IP_mWriteReg(BWT_BASE_ADDR, CONTROL_REG_OFFSET, 0);
//  XGpio_DiscreteWrite(&ledGpio, CHANNEL, 0x0F);

//	LoopCounter = 0;
	//XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, 0xa);


//	while(1){
//			if ((BWT_IP_mReadReg(BWT_BASE_ADDR, STATUS_REG_OFFSET) & 0x01) != 0)
//			{
//				BWT_IP_mWriteReg(BWT_BASE_ADDR, CONTROL_REG_OFFSET, 0x02);
//				BWT_IP_mWriteReg(BWT_BASE_ADDR, CONTROL_REG_OFFSET, 0x00);
//				FPGA_BWT_Str[LoopCounter] = BWT_IP_mReadReg(BWT_BASE_ADDR, RESULT_REG_OFFSET);
//				TEST_Str[LoopCounter] = (BWT_IP_mReadReg(BWT_BASE_ADDR, RESULT_REG_OFFSET))>>8;
//
//
////				print(FPGA_BWT_Str);
////				print("\n\r");
//				if ((BWT_IP_mReadReg(BWT_BASE_ADDR, STATUS_REG_OFFSET) & 0x01) == 0)
//				{
//					print("if 2");
//					print("\n\r");
//					break;
//				}
//				LoopCounter++;
//			}
//		}

//	for(LoopCounter = 0; LoopCounter < LENGTH_STR; LoopCounter++)
//	{
//			FPGA_BWT_Str[LoopCounter] = BWT_IP_mReadReg(BWT_BASE_ADDR, RESULT_REG_OFFSET);
//			//XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, FPGA_BWT_Str[LoopCounter]);
//			//print((char)FPGA_BWT_Str[LoopCounter]);
//			//print("\n\r");
//	}

//	print("FPGA BWT: ");
//	print(FPGA_BWT_Str);
//	print("\n\r");
//
//	print("TEST BWT: ");
//	print(TEST_Str);
//	print("\n\r");
//
//	XGpio_DiscreteWrite(&ledGpio, CHANNEL, 0x01);
	//XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, 0xf);

	BWT((u8 *)InputStr, (u8 *)uB_BWT_Str);

	print("BWT:      ");
	print(uB_BWT_Str);
	print("\n\r");

	XGpio_DiscreteWrite(&ledGpio, CHANNEL, 0x02);
	//XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, 0xc);

	for(LoopCounter = 0; LoopCounter < LENGTH_STR; LoopCounter++)
	{
//		XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, uB_BWT_Str[LoopCounter]);
		if (uB_BWT_Str[LoopCounter] != FPGA_BWT_Str[LoopCounter])
		{
			StrResult = 0;
			XGpio_DiscreteWrite(&ledGpio, CHANNEL, 0xf0);
		}
		else
			StrResult = 1;
	}
//
//
//	//XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, 0xf);

	//XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, StrResult);

	//XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, 0xf);

//
	if (StrResult)
	{

		//XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, 0xb);
		XGpio_DiscreteWrite(&ledGpio, CHANNEL, 0xff);
	}

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
