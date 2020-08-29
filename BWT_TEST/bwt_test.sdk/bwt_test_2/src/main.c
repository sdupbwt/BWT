/*
 * main.c
 *
 *  Created on: 28.08.2020
 *      Author: Weronika
 */

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
/***************************** Main function *********************************/

u8 InputStr[LENGTH_STR] = "Bananabananabananabananabananab$";
u8 uB_BWT_Str[LENGTH_STR] = "b$nnnnnnnnnnbbbbBaaaaaaaaaaaaaaa";
u8 FPGA_BWT_Str[LENGTH_STR];

int main(){
	int status;
	XGpio inputCharGpio, outputCharGpio;
	u8 LoopCounter;
	u8 StrResult = 0;
	u8 ctrl_tgl = 0;

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

	//Start bwt processor - pulse start bit in control register and send string to bwt


	for (LoopCounter = 0; LoopCounter < LENGTH_STR; LoopCounter++)
	{
		ctrl_tgl = !ctrl_tgl;
		BWT_IP_mWriteReg(BWT_BASE_ADDR, INPUT_STRING_REG_OFFSET, InputStr[LoopCounter]);
		BWT_IP_mWriteReg(BWT_BASE_ADDR, CONTROL_REG_OFFSET, ctrl_tgl);
	}
//	BWT_IP_mWriteReg(BWT_BASE_ADDR, INPUT_STRING_REG_OFFSET, '$');
//	BWT_IP_mWriteReg(BWT_BASE_ADDR, CONTROL_REG_OFFSET, 0);

	LoopCounter = 0;
	XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, 0xa);
	while(1){
		if ((BWT_IP_mReadReg(BWT_BASE_ADDR, STATUS_REG_OFFSET) & 0x01) != 0)
		{
			FPGA_BWT_Str[LoopCounter] = BWT_IP_mReadReg(BWT_BASE_ADDR, RESULT_REG_OFFSET);
			XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, FPGA_BWT_Str[LoopCounter]);
			if ((BWT_IP_mReadReg(BWT_BASE_ADDR, STATUS_REG_OFFSET) & 0x01) == 0)
			{
				break;
			}
			LoopCounter++;
		}
	}

	XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, 0xf);

//		BWT(InputStr,uB_BWT_Str);


		for(LoopCounter = 0; LoopCounter < LENGTH_STR; LoopCounter++)
		{
			XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, FPGA_BWT_Str[LoopCounter]);
			if (uB_BWT_Str[LoopCounter] != FPGA_BWT_Str[LoopCounter])
			{
				StrResult = 1;
			}
		}

		XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, 0x1);

		if (!StrResult)
		{
			XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, 0xb);
		}
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
	FAILURE:
	while(1) break;
}

