CC=gcc
CFLAGS=-Wall -Wextra -Werror -Wno-cast-function-type -Wno-unused-parameter -I../../src/ -O6 -funroll-loops -fomit-frame-pointer -rdynamic -shared -fPIC
LIBS=-lzmq -lc

zmq.pd_linux: zmq.c Makefile
	$(CC) $(CFLAGS) zmq.c $(LIBS) -o zmq.pd_linux

clean:
	rm zmq.pd_linux
