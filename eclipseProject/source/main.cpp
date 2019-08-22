/* ========================================
 *
 * Copyright YOUR COMPANY, THE YEAR
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
*/

#include "pdl_header.h"
#include <inttypes.h>

#define  USER_BT             BT0
#define  USER_TIMER_SIZE     RtSize32Bit

bool ledState = false;
unsigned int currentCount = 0u;

static void RtUnderflowIrqHandler()
{
	currentCount++;

	if(ledState == false)
	{
		ledState = true;
	}

	else
	{
		ledState = false;
	}

	Gpio1pin_Put(GPIO1PIN_P18,ledState);
}


int main()
{

	//Init system clock at 200MHz
	SystemInit();

	//Init GPIO blue LED
	Gpio1pin_InitOut(GPIO1PIN_P18, Gpio1pin_InitVal(0u));

	stc_bt_rt_config_t stcRtConfig;
	stc_rt_irq_en_t   stcIrqEn;
	stc_rt_irq_cb_t    stcIrqCb;

	/* Clear structures */
	PDL_ZERO_STRUCT(stcRtConfig);
	PDL_ZERO_STRUCT(stcIrqEn);
	PDL_ZERO_STRUCT(stcIrqCb);

	/* Initialize interrupt */
	stcRtConfig.pstcRtIrqEn = &stcIrqEn;
	stcRtConfig.pstcRtIrqCb = &stcIrqCb;

	/* Set BT IO mode */
	Bt_ConfigIOMode(&USER_BT, BtIoMode0);

	/* Initialize BT */
	stcRtConfig.enPres = RtPres1Div2048; /* BT_CLK_DIV_2048: T = 102.4us @ PCLK = 200MHz */
	stcRtConfig.enSize = USER_TIMER_SIZE;
	stcRtConfig.enMode = RtReload;
	stcRtConfig.enExtTrig = RtExtTiggerDisable;
	stcRtConfig.enOutputPolarity = RtPolarityLow;
	stcRtConfig.pstcRtIrqEn->bRtTrigIrq = 0;
	stcRtConfig.pstcRtIrqEn->bRtUnderflowIrq = 1;
	stcRtConfig.pstcRtIrqCb->pfnRtTrigIrqCb = NULL;
	stcRtConfig.pstcRtIrqCb->pfnRtUnderflowIrqCb = RtUnderflowIrqHandler;
	stcRtConfig.bTouchNvic = TRUE;
	Bt_Rt_Init(&USER_BT, &stcRtConfig);

	/* Write cycle value */
	Bt_Rt_WriteCycleVal(&BT1, 0x1);

	Bt_Rt_WriteCycleVal(&USER_BT, 0x86A0);  /* Cycle = T*(m+1)=4ms @ T = 0.2us */

	 /* Start Reload timer by software trigger */
	Bt_Rt_EnableCount(&USER_BT);
	Bt_Rt_EnableSwTrig(&USER_BT);

    while(true);

}




