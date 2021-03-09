#include <stdio.h>
#include "ec20.h"
#include "ec21.h"
#include "ec25.h"
#include "openlinux.h"
#include "uart.h"
#include "spi.h"

int main()
{
	printf("Hello Quectel....\n");

	ec20();
	ec21();
	ec25();
	openlinux_dll_init();

	uart_init();
	spi_init();

	return 0;
}
