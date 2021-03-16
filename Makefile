.PHONY:all clean
export BUILD_ROOT = $(shell pwd)
all:
	make -C ec20
	make -C ec21
	make -C ec25
	make -C app


clean:
	rm -rf app/link_obj app/dep quectel
	rm ec20/*.d
	rm ec21/*.d
	rm ec25/*.d

	

