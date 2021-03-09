#include <stdio.h>
#include "ec20.h"
#include "ec21.h"
#include "ec25.h"
#include "openlinux.h"

int main()
{
	printf("Hello Quectel....\n");

	ec20();
	ec21();
	ec25();
	openlinux_dll_init();
	
	return 0;
}
