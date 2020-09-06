/*
 * main.c
 *
 *  Created on: 06.09.2020
 *      Author: Weronika
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
#define CONTROL_REG BWT_IP_S00_AXI_SLV_REG0_OFFSET		//start, signal from ZYNQ to start send data
//input data, ZYNQ -> FPGA
#define INPUT_STRING_1 BWT_IP_S00_AXI_SLV_REG1_OFFSET
#define INPUT_STRING_2 BWT_IP_S00_AXI_SLV_REG2_OFFSET
#define INPUT_STRING_3 BWT_IP_S00_AXI_SLV_REG3_OFFSET
#define INPUT_STRING_4 BWT_IP_S00_AXI_SLV_REG4_OFFSET
#define INPUT_STRING_5 BWT_IP_S00_AXI_SLV_REG5_OFFSET
#define INPUT_STRING_6 BWT_IP_S00_AXI_SLV_REG6_OFFSET
#define INPUT_STRING_7 BWT_IP_S00_AXI_SLV_REG7_OFFSET
#define INPUT_STRING_8 BWT_IP_S00_AXI_SLV_REG8_OFFSET

#define STATUS_REG BWT_IP_S00_AXI_SLV_REG9_OFFSET		//valid_out, signal from to FPGA
//output data, FPGA -> ZYNQ
#define OUTPUT_REG_0 BWT_IP_S00_AXI_SLV_REG10_OFFSET
#define OUTPUT_REG_1 BWT_IP_S00_AXI_SLV_REG11_OFFSET
#define OUTPUT_REG_2 BWT_IP_S00_AXI_SLV_REG12_OFFSET
#define OUTPUT_REG_3 BWT_IP_S00_AXI_SLV_REG13_OFFSET
#define OUTPUT_REG_4 BWT_IP_S00_AXI_SLV_REG14_OFFSET
#define OUTPUT_REG_5 BWT_IP_S00_AXI_SLV_REG15_OFFSET
#define OUTPUT_REG_6 BWT_IP_S00_AXI_SLV_REG16_OFFSET
#define OUTPUT_REG_7 BWT_IP_S00_AXI_SLV_REG17_OFFSET

//#define LED1 0x80									/* Initial LED value - XX0000XX */
//#define LED_DELAY 1000000							/* Software delay length */

//Cordic processor bits masks
#define CONTROL_REG_START_MASK (u32)(0x01)
#define STATUS_REG_READY_MASK (u32)(0x01)
/***************************** Main function *********************************/

char8 InputStr[LENGTH_STR];
char8 ZYNQ_BWT_Str[LENGTH_STR];
char8 FPGA_BWT_Str[LENGTH_STR];


int main(){

	int status;
	XGpio LedGpio;
	u32 LoopCounter;
	u32 InBWT[8];
	u32 OutFPGA[8];
	u8 StrResult = 0;
	char8 InputChar;
	char8 result[2];

	/* Initialize driver for LEDs */
	status = XGpio_Initialize(&LedGpio, XPAR_AXI_GPIO_0_DEVICE_ID);
	if (status != XST_SUCCESS)
	{
		goto FAILURE;
	}
	XGpio_SetDataDirection(&LedGpio, CHANNEL, 0x00);
	XGpio_DiscreteWrite(&LedGpio, CHANNEL, 0xff);


    init_platform();

    // Main while loop
    while(1)
    {
    	// Take input string from UART
    	print("Write the input string and press \"enter\". String should have 31 characters.");
    	LoopCounter = 0;

    	while(1)
    	{
    		InputChar = inbyte();
    		if ('\r' == InputChar)
    		{
    			if (LoopCounter < 31)
    			{
    				print("Too less chars. String should have 31 characters. Try again from beginning.");
    				LoopCounter = 0;
    			}
    			else if (LoopCounter > 31)
    			{
    				print("Too many chars. String should have 31 characters. Try again from beginning.");
    				LoopCounter = 0;
    			}
    			else
    			{
    				break;
    			}
    		}
    		LoopCounter++;
    		InputStr[LoopCounter] = InputChar;
    	}
    	InputStr[LENGTH_STR] = '$';

    	print("\n\r");
    	print("InputStr: ");
    	print(InputStr);
    	print("\n\r");

    	//Start bwt processor - pulse start bit in control register
    	BWT_IP_mWriteReg(BWT_BASE_ADDR, CONTROL_REG, 0);

    	// Send string to FPGA
    	for(LoopCounter = 0; LoopCounter < 8; LoopCounter++)
    	{
    		InBWT[LoopCounter] = ((((u32)InputStr[(8-LoopCounter)*4 - 1]) << 24) | (((u32)InputStr[(8-LoopCounter)*4 - 2]) << 16) | (((u32)InputStr[(8-LoopCounter)*4 - 3]) << 8) |((u32)InputStr[(8-LoopCounter)*4 - 4]));
    	}

    	BWT_IP_mWriteReg(BWT_BASE_ADDR, INPUT_STRING_1, InBWT[0]);
    	BWT_IP_mWriteReg(BWT_BASE_ADDR, INPUT_STRING_2, InBWT[1]);
    	BWT_IP_mWriteReg(BWT_BASE_ADDR, INPUT_STRING_3, InBWT[2]);
    	BWT_IP_mWriteReg(BWT_BASE_ADDR, INPUT_STRING_4, InBWT[3]);
    	BWT_IP_mWriteReg(BWT_BASE_ADDR, INPUT_STRING_5, InBWT[4]);
    	BWT_IP_mWriteReg(BWT_BASE_ADDR, INPUT_STRING_6, InBWT[5]);
    	BWT_IP_mWriteReg(BWT_BASE_ADDR, INPUT_STRING_7, InBWT[6]);
    	BWT_IP_mWriteReg(BWT_BASE_ADDR, INPUT_STRING_8, InBWT[7]);

    	//Start cordic processor - pulse start bit in control register
    	BWT_IP_mWriteReg(BWT_BASE_ADDR, CONTROL_REG, 1);
    	BWT_IP_mWriteReg(BWT_BASE_ADDR, CONTROL_REG, 0);

    	//Wait for ready bit in status register
    	while( (BWT_IP_mReadReg(BWT_BASE_ADDR, STATUS_REG) & STATUS_REG_READY_MASK) == 0);

    	//Get results
    	OutFPGA[7] = BWT_IP_mReadReg(BWT_BASE_ADDR, OUTPUT_REG_0);
    	OutFPGA[6] = BWT_IP_mReadReg(BWT_BASE_ADDR, OUTPUT_REG_1);
    	OutFPGA[5] = BWT_IP_mReadReg(BWT_BASE_ADDR, OUTPUT_REG_2);
    	OutFPGA[4] = BWT_IP_mReadReg(BWT_BASE_ADDR, OUTPUT_REG_3);
    	OutFPGA[3] = BWT_IP_mReadReg(BWT_BASE_ADDR, OUTPUT_REG_4);
    	OutFPGA[2] = BWT_IP_mReadReg(BWT_BASE_ADDR, OUTPUT_REG_5);
    	OutFPGA[1] = BWT_IP_mReadReg(BWT_BASE_ADDR, OUTPUT_REG_6);
    	OutFPGA[0] = BWT_IP_mReadReg(BWT_BASE_ADDR, OUTPUT_REG_7);


		for(LoopCounter = 0; LoopCounter < 8; LoopCounter++)
		{

			FPGA_BWT_Str[4 * LoopCounter] = (OutFPGA[LoopCounter] & ((u32)0x000000FF));
			FPGA_BWT_Str[4 * LoopCounter + 1] = (OutFPGA[LoopCounter] & ((u32)0x0000FF00)) >> 8;
			FPGA_BWT_Str[4 * LoopCounter + 2] = (OutFPGA[LoopCounter] & ((u32)0x00FF0000)) >> 16;
			FPGA_BWT_Str[4 * LoopCounter + 3] = (OutFPGA[LoopCounter] & ((u32)0xFF000000)) >> 24;
		}

    	print("FPGA BWT: ");
    	print(FPGA_BWT_Str);
    	print("\n\r");

    	XGpio_DiscreteWrite(&LedGpio, CHANNEL, 0x01);

    	BWT((u8 *)InputStr, (u8 *)ZYNQ_BWT_Str);

    	print("BWT:      ");
    	print(ZYNQ_BWT_Str);
    	print("\n\r");


    	for(LoopCounter = 0; LoopCounter < LENGTH_STR; LoopCounter++)
    	{
    		if (ZYNQ_BWT_Str[LoopCounter] != FPGA_BWT_Str[LoopCounter])
    		{
    			StrResult = 0;
    			XGpio_DiscreteWrite(&LedGpio, CHANNEL, 0xf0);
    		}
    		else
    			StrResult = 1;
    	}

    	if (StrResult)
    	{
    		print("\n\r********************\n**** BWT PASSED ****\n********************\n\r");
    		XGpio_DiscreteWrite(&LedGpio, CHANNEL, 0x55);
    	}
    	else
    	{
    		print("\n\r********************\n**** BWT FAILED ****\n*********************\n\r");
    		XGpio_DiscreteWrite(&LedGpio, CHANNEL, 0xFF);
    	}
    }

    	cleanup_platform();
    	FAILURE:
		while(1) break;
}
