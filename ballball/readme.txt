��Ҫ��xilinx��װĿ¼�µ���F:\xilinx\14.3\ISE_DS\EDK\sw\XilinxProcessorIPLib\drivers\tft_v3_01_a\src��xtft.c�ļ������
void XTft_SetPixel(XTft *InstancePtr, u32 ColVal, u32 RowVal, u32 PixelVal)�������
Xil_Out32(InstancePtr->TftConfig.VideoMemBaseAddr +	(4 * ((RowVal) * XTFT_DISPLAY_BUFFER_WIDTH + ColVal)),PixelVal);
����Ϊ
Xil_Out8(InstancePtr->TftConfig.VideoMemBaseAddr +	(4 * (RowVal) * XTFT_DISPLAY_BUFFER_WIDTH + ColVal),PixelVal);
�Լ�
void XTft_GetPixel(XTft *InstancePtr, u32 ColVal, u32 RowVal, u32 *PixelVal)������������һ��������Ϊ��
*PixelVal = Xil_In8(InstancePtr->TftConfig.VideoMemBaseAddr +	(4 *RowVal * XTFT_DISPLAY_BUFFER_WIDTH + ColVal));