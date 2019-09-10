/*
 * codec.c
 *
 *  Created on: Sep 9, 2019
 *      Author: Zach
 */
#include <stdint.h>
#include "xparameters.h"
#include "fsl.h" // should probably pull into it's own lib
#include "xspi_l.h"

static void push_to_fifo(uint8_t data) {
	putfslx(data, FSL_ID, FSL_DEFAULT);
}

/*
 * Reference: https://www.analog.com/media/en/technical-documentation/data-sheets/ADAU1761.pdf
 */
static void write_reg(uint32_t reg, uint32_t val) {
	uint8_t chip_addr = 0;
	uint8_t addr_high, addr_low, data_high, data_low;

	addr_high = (reg & 0xFF00) >> 8;
	addr_low = (reg & 0x00FF);
	data_high = (val & 0xFF00) >> 8;
	data_low = (val & 0x00FF);

	// void XSpi_WriteReg(u32 BaseAddress, u32 RegOffset, u32 RegisterValue);
	XSpi_WriteReg(XPAR_SPI_0_BASEADDR, XSP_DTR_OFFSET, chip_addr);
	XSpi_WriteReg(XPAR_SPI_0_BASEADDR, XSP_DTR_OFFSET, addr_high);
	XSpi_WriteReg(XPAR_SPI_0_BASEADDR, XSP_DTR_OFFSET, addr_low);
	XSpi_WriteReg(XPAR_SPI_0_BASEADDR, XSP_DTR_OFFSET, data_high);
	XSpi_WriteReg(XPAR_SPI_0_BASEADDR, XSP_DTR_OFFSET, data_low);
}


static void configure_codec(void) {
	write_reg(0x4000,1);
	write_reg(0x4000,1);
	write_reg(0x4000,1);
	write_reg(0x4000,1);
	write_reg(0x40f9,0x7f);
	write_reg(0x40fa,0x3);
	write_reg(0x401c,0x2d);
	write_reg(0x401e,0x4d);
	write_reg(0x4020,5);
	write_reg(0x4021,0x11);
	write_reg(0x4025,0xe6);
	write_reg(0x4026,0xe6);
	write_reg(0x4029,3);
	write_reg(0x402a,3);
	write_reg(0x4016,0x21);
	write_reg(0x40F2,0x1);
}


void init_codec(void) {
	configure_codec();
}