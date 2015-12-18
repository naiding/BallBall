/*
 * line.c
 *
 *  Created on: 2013-9-20
 *      Author: Administrator
 */
#include "xtft.h"
#include "xparameters.h"
#define TFT_DEVICE_ID	XPAR_TFT_0_DEVICE_ID
#define TFT_FRAME_ADDR0		XPAR_XPS_MCH_EMC_0_MEM0_HIGHADDR - 0x001FFFFF
#define FGCOLOR_grn		0x1c	/**< Foreground Color - Green */
#define FGCOLOR_blu		0x3
#define FGCOLOR_red		0xe0
static XTft TftInstance;
XTft_Config *TftConfigPtr;
int main()
{
	int row,col,i;
	TftConfigPtr = XTft_LookupConfig(TFT_DEVICE_ID);
	XTft_CfgInitialize(&TftInstance, TftConfigPtr,
				 	TftConfigPtr->BaseAddress);
	XTft_SetFrameBaseAddr(&TftInstance, TFT_FRAME_ADDR0);
	XTft_ClearScreen(&TftInstance);
	row=6;
	col=20;
	for(i=0;i<640;i++)
		XTft_SetPixel(&TftInstance, i, 8, 0x00ffffff);
	for(i=col;i<col+600;i++)
		XTft_SetPixel(&TftInstance, i, row, FGCOLOR_red);
	row=10;
	for(i=col;i<col+600;i++)
			XTft_SetPixel(&TftInstance, i, row, FGCOLOR_grn);
	row=20;
	for(i=col;i<col+600;i++)
			XTft_SetPixel(&TftInstance, i, row, FGCOLOR_blu);
	return XST_SUCCESS;
}
