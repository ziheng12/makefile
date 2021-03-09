.PHONY:all clean

all:
	make -C ec20
	make -C ec21
	make -C ec25
	make -C app


clean:
	rm -f quectel
	rm -rf app/link_obj/*.o app/quectel.d
	rm -rf app/quectel.o app/quectel.d app/quectel
	rm -rf ec20/ec20.o ec20/ec20.d
	rm -rf ec21/ec21.o ec21/ec21.d
	rm -rf ec25/ec25.o ec25/ec25.d
	rm -rf app/link_obj
	

