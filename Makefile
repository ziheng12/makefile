.PHONY:all clean install uninstall
export BUILD_ROOT = $(shell pwd)
export HEAD_PATH = $(BUILD_ROOT)/inc

all:
	make -C ec20
	make -C ec21
	make -C ec25
	make -C openlinux
	make -C app

clean:
	rm -rf app/link_obj app/dep app/lib_obj quectel	
	rm -rf lib/*.a lib/*.so

install:
	sudo cp quectel /usr/bin
	sudo cp lib/*.so /usr/lib
	sudo cp lib/ext_lib/*.so /usr/lib

uninstall:
	sudo rm /usr/bin/quectel
	sudo rm /usr/bin/libspi.so
