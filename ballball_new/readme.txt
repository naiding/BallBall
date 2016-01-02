需要将xilinx安装目录下的如F:\xilinx\14.3\ISE_DS\EDK\sw\XilinxProcessorIPLib\drivers\tft_v3_01_a\src的xtft.c文件里面的
void XTft_SetPixel(XTft *InstancePtr, u32 ColVal, u32 RowVal, u32 PixelVal)函数里的
Xil_Out32(InstancePtr->TftConfig.VideoMemBaseAddr +	(4 * ((RowVal) * XTFT_DISPLAY_BUFFER_WIDTH + ColVal)),PixelVal);
更换为
Xil_Out8(InstancePtr->TftConfig.VideoMemBaseAddr +	(4 * (RowVal) * XTFT_DISPLAY_BUFFER_WIDTH + ColVal),PixelVal);
以及
void XTft_GetPixel(XTft *InstancePtr, u32 ColVal, u32 RowVal, u32 *PixelVal)函数里面的最后一个语句更换为：
*PixelVal = Xil_In8(InstancePtr->TftConfig.VideoMemBaseAddr +	(4 *RowVal * XTFT_DISPLAY_BUFFER_WIDTH + ColVal));