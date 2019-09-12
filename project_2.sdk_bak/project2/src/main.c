/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "codec.h"
#include "audio_fifo.h"

#define NUM_SIN_STEPS 9


int main()
{
    init_platform();
    xil_printf("\n\n=================== Zach Richard - MicroBlaze Started! ===================\n\n");

    xil_printf("Initializing codec...");
    init_codec();
    xil_printf("done.\n");

    // sin(i*pi/4) * 16383 + 16383
    uint16_t sin_0_to_2pi_scaled[NUM_SIN_STEPS] = {
    	16383, 	// sin(0pi/4)
		27968, 	// sin(1pi/4
		32766, 	// sin(2pi/4)
		27968, 	// sin(3pi/4)
		16383, 	// sin(4pi/4)
		 4798,  // sin(5pi/4)
		    0,  // sin(6pi/4)
		 4798,  // sin(7pi/4)
		16383, // sin(8pi/4)
    };

    uint32_t num_sin = 0;
    while(1) {
    	for (int i = 0; i < NUM_SIN_STEPS; i++) {
    		push_to_fifo(sin_0_to_2pi_scaled[i]);
    	}
    	if (++num_sin >= 100) {
    		xil_printf("Pushed 100 sin wave iterations!\n");
    		num_sin = 0;
    	}
    }

    cleanup_platform();
    return 0;
}