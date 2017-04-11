## Makefile for pi-sdn ##
#
# Phil Crump <phil@philcrump.co.uk>

BIN = pi-sdn

CC = gcc

CFLAGS = 

CFLAGS-STATIC = -static

SRCS = main.c timer.c

LIBS = -lwiringPi -lpthread

all:
	$(CC) $(CFLAGS) $(SRCS) -o $(BIN) $(LIBS)
static:
	$(CC) $(CFLAGS) $(CFLAGS-STATIC) $(SRCS) -o $(BIN) $(LIBS)
debug:
	$(CC) $(CFLAGS) -g $(SRCS) -o $(BIN) $(LIBS)
clean:
	rm -fv *.o $(BIN)