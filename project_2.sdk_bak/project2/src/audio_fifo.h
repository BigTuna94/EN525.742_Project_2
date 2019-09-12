/*
 * audio_fifo.h
 *
 *  Created on: Sep 10, 2019
 *      Author: Zach
 */

#ifndef SRC_AUDIO_FIFO_H_
#define SRC_AUDIO_FIFO_H_

#define FSL_ID 0 //It's the only FSL so Xilinx didn't generate an ID in xparameters.h

void push_to_fifo(uint16_t data);

#endif /* SRC_AUDIO_FIFO_H_ */
