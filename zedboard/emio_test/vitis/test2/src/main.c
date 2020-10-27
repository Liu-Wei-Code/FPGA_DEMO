#include "xparameters.h"
#include "xgpiops.h"
#include "xstatus.h"


XGpioPs gpio;
int main()
{
	int status;
	XGpioPs_Config *config;
	config = XGpioPs_LookupConfig(XPAR_XGPIOPS_0_DEVICE_ID);
	status = XGpioPs_CfgInitialize(&gpio, config, config->BaseAddr);
	if(status!=XST_SUCCESS)
		return XST_FAILURE;
	int SW[8] = {54,55,56,57,58,59,60,61};
	int LED[8] = {62,63,64,65,66,67,68,69};
	for (int i = 0; i < 8; ++i) {
		XGpioPs_SetDirectionPin(&gpio, LED[i], 1);
		XGpioPs_SetOutputEnablePin(&gpio, LED[i], 1);
		XGpioPs_SetDirectionPin(&gpio, SW[i], 0);
	}
	while(1)
	{
		for (int i = 0; i < 8; ++i) {
			XGpioPs_WritePin(&gpio, LED[i], XGpioPs_ReadPin(&gpio, SW[i]));
		}
	}

}
