MEMORY {
	FLASH : ORIGIN = 0X8000000, LENGTH = 64K
	SRAM : ORIGIN = 0X20000000, LENGTH = 16K
	}

SECTIONS{
	.text : {
		*(.text)
	} >SRAM

	.data : {
		*(.data)
	} >SRAM
}
