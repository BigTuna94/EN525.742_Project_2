/*
 * audio_fifo.c
 *
 *  Created on: Sep 10, 2019
 *      Author: Zach
 */

#include "xgpio_l.h"
#include "fsl.h"


#include "audio_fifo.h"


void push_to_fifo(uint32_t data) {
	putfslx(data, FSL_ID, FSL_DEFAULT);

	// XGpio_WriteReg(BaseAddress, RegOffset, Data);
	XGpio_WriteReg(XPAR_GPIO_0_BASEADDR, 0, (uint8_t)(data & 0xFF00));
}
