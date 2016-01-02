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

typedef struct {
	int x;
	int y;
	struct Node* next;
}Node;

void move(int direction,Node* n){
	switch(direction){
	case 0://right
		n->x += 10;
		break;
	case 1://left
		n->x -= 10;
		break;
	case 2://up
		n->y += 10;
		break;
	case 3://down
		n->y -= 10;
		break;
	}
}

void paintNode(Node n,char color){

	paintTrueRectangle(n.x, n.y, 5,color);
	//Delay(1000000);
	//XTft_ClearScreen(&TftInstance);

}

void Delay(int loop){
	int i;
	for (i = 0;i < loop;i++);
}

void paintRectangle(int col,int row) {
	int i;
	for (i = col - 5;i < col + 5;i ++) {
		XTft_SetPixel(&TftInstance, i, row - 5, FGCOLOR_red);
	}
	for (i = col - 5;i < col + 5;i ++) {
		XTft_SetPixel(&TftInstance, i, row + 5, FGCOLOR_red);
	}
	for (i = row - 5;i < row + 5; i++){
		XTft_SetPixel(&TftInstance, col - 5, i, FGCOLOR_red);
	}
	for (i = row - 5;i < row + 5; i++){
		XTft_SetPixel(&TftInstance, col + 5, i, FGCOLOR_red);
	}
}
void clearNode(int col, int row, int size){
	int i, j;
		for (i = row - size - 1;i < row + size + 1; i++)
			for (j = col - size - 1;j < col + size + 1; j++){
				XTft_SetPixel(&TftInstance, j, i, TftInstance.BgColor);
			}
}
void paintTrueRectangle(int col, int row, int size,char color) {

	int i, j;
	for (i = row - size - 1;i < row + size + 1; i++)
		for (j = col - size - 1;j < col + size + 1; j++){
			XTft_SetPixel(&TftInstance, j, i, color);
		}
//	XTft_FillScreen(&TftInstance, col - size,row - size, col + size, row + size, FGCOLOR_red);

}
int main()
{
	int i = 0;
	char color[] = {FGCOLOR_red, FGCOLOR_grn, FGCOLOR_blu};
	Node Snake;
	Snake.x = 400;
	Snake.y = 400;
	TftConfigPtr = XTft_LookupConfig(TFT_DEVICE_ID);
	XTft_CfgInitialize(&TftInstance, TftConfigPtr,
				 	TftConfigPtr->BaseAddress);
	XTft_SetFrameBaseAddr(&TftInstance, TFT_FRAME_ADDR0);
	XTft_ClearScreen(&TftInstance);

	for(;;){

		if(i == 3)
			i = 0;
		paintNode(Snake,color[i]);
		Delay(5000000);
		clearNode(Snake.x,Snake.y,5);
		move(1,&Snake);//right
		i ++;
//		XTft_ClearScreen(&TftInstance);
		//Delay(10000000);

	}


//	paintRectangle(50, 50);
//	paintTrueRectangle(50,50,5);

//	for(i=0;i<640;i++)
//		XTft_SetPixel(&TftInstance, i, 100, 0x00ffffff);
//	for(i=col;i<col+600;i++)
//		XTft_SetPixel(&TftInstance, i, row, FGCOLOR_red);
//	row=10;
//	for(i=0;i<30;i++)
//			XTft_SetPixel(&TftInstance, 100, i, FGCOLOR_grn);
//	row=20;
//	for(i=col;i<col+600;i++)
//			XTft_SetPixel(&TftInstance, i, row, FGCOLOR_blu);
	return XST_SUCCESS;
}
