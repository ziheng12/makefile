.PHONY:all clean

SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)
DEPS = $(SRCS:.c=.d)

all:$(BIN) $(DEPS) $(OBJS)
ifneq ("$(wildcard $(DEPS))","")
include $(DEPS)
endif

$(BIN):$(OBJS)
	gcc -o $@ $^ ../ec20/ec20.o ../ec21/ec21.o ../ec25/ec25.o 

%.o:%.c
	gcc -o $@ -c $(filter %.c,$^)

%.d:%.c
	gcc -MM $^ > $@

clean:
	rm -rf $(BIN) $(OBJS) $(DEPS)
	

