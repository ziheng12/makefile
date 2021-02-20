.PHONY:all clean

SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)
DEPS = $(SRCS:.c=.d)

BIN  = quectel

all:$(BIN) $(DEPS)
ifneq ("$(wildcard $(DEPS))","")
include $(DEPS)
endif

$(BIN):$(OBJS)
	gcc -o $@ $^

%.o:%.c
	gcc -o $@ -c $(filter %.c,$^)
	#gcc -o $@ -c $^

%.d:%.c
	gcc -MM $^ > $@

clean:
	rm -rf $(BIN) $(OBJS) $(DEPS)
	

