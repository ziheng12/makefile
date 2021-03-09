.PHONY:all clean
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
