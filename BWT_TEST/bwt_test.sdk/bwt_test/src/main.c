/*
 * main.c
 *
 *  Created on: 23.08.2020
 *      Author: Angelina
 */

#include "xparameters.h"
#include "xgpio.h"
#include "bwt_ip.h"
/**************************** user definitions ********************************/
#define CHANNEL 1
//Cordic processor base addres redefinition
#define BWT_BASE_ADDR XPAR_BWT_IP_0_S00_AXI_BASEADDR
//Cordic processor registers' offset redefinition
#define CONTROL_REG_OFFSET BWT_IP_S00_AXI_SLV_REG0_OFFSET 		//start
#define INPUT_STRING_REG_OFFSET BWT_IP_S00_AXI_SLV_REG1_OFFSET	//
#define STATUS_REG_OFFSET BWT_IP_S00_AXI_SLV_REG2_OFFSET		//valid
#define RESULT_REG_OFFSET BWT_IP_S00_AXI_SLV_REG3_OFFSET		//output
//#define RESULT_REG_SIN(param) ((u32)param & (u32)(0x00000FFF))
//#define RESULT_REG_COS(param) (((u32)param & (u32)(0x0FFF0000)) >> 16 )
/***************************** Main function *********************************/
int main(){
	int status;
	XGpio inputCharGpio, outputCharGpio;
	u32 data;
	u32 result, output;

	/* Initialize driver for the input string GPIOe */
	status = XGpio_Initialize(&inputCharGpio, XPAR_INPUT_STRING_CHAR_DEVICE_ID);
	if (status != XST_SUCCESS) {
	goto FAILURE;
	} XGpio_SetDataDirection(&inputCharGpio, CHANNEL, 0xFF);

	/* Initialize driver for the output string GPIO */
	status = XGpio_Initialize(&outputCharGpio, XPAR_OUTPUT_STRING_CHAR_DEVICE_ID);
	if (status != XST_SUCCESS) {
	goto FAILURE;
	} XGpio_SetDataDirection(&outputCharGpio, CHANNEL, 0x00);

	//XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, 0);

	while(1){

		//Read data - gpio input
		data = XGpio_DiscreteRead(&inputCharGpio, CHANNEL);

		//Send to gpio
		XGpio_DiscreteWrite(&outputCharGpio, CHANNEL, data);

		//Send data to data register of bwt processor
		BWT_IP_mWriteReg(BWT_BASE_ADDR, INPUT_STRING_REG_OFFSET, data);

		//Start bwt processor - pulse start bit in control register
		BWT_IP_mWriteReg(BWT_BASE_ADDR, CONTROL_REG_OFFSET, 1);
		BWT_IP_mWriteReg(BWT_BASE_ADDR, CONTROL_REG_OFFSET, 0);

		//Wait for ready bit in status register
		//while( (BWT_IP_mReadReg(BWT_BASE_ADDR, STATUS_REG_OFFSET) & 0x01) == 0);

		//Get results
		//result = BWT_IP_mReadReg(BWT_BASE_ADDR, RESULT_REG_OFFSET);

		//Send to GPIO

	}
	/* Failure or end trap */
	FAILURE:
	while(1) break;
}

