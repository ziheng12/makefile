#---------------------------------
#Advanced Makefile 
#Description:	a project makefile demo
#Author		:	puck.shen@quectel.com
#Date		:	2021-03-09
#---------------------------------

#build root directory
export BUILD_ROOT = $(shell pwd)
#head files path
export HEAD_PATH = $(BUILD_ROOT)/inc
#build directory
#you can add your directory here.
BUILD_DIR = $(BUILD_ROOT)/ec20 \
			$(BUILD_ROOT)/ec21 \
			$(BUILD_ROOT)/ec25 \
			$(BUILD_ROOT)/openlinux \
			$(BUILD_ROOT)/app \

.PHONY:all clean install uninstall

all:
	@echo BUILD_ROOT = $(BUILD_ROOT)
	@echo BUILD_DIR = $(BUILD_DIR)
	@for dir in $(BUILD_DIR); \
	do \
		make -C $$dir; \
	done

clean:
	rm -rf app/link_obj app/dep app/lib_obj quectel	
	rm -rf lib/*.a lib/*.so

install:
	sudo cp quectel /usr/bin
	sudo cp lib/libopenlinux.so /usr/lib
	sudo cp lib/ext_lib/libspi.so /usr/lib

uninstall:
	sudo rm /usr/bin/quectel
	sudo rm /usr/lib/libopenlinux.so /usr/lib/libspi.so
