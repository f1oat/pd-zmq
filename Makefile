CC=gcc
CFLAGS=-Wall -Wextra -Werror -Wno-cast-function-type -Wno-unused-parameter -I../../src/ -O6 -funroll-loops -fomit-frame-pointer -rdynamic -shared -fPIC
LIBS=-lzmq -lc

all: zmq.pd_linux

zmq.pd_linux: zmq.c Makefile
	$(CC) $(CFLAGS) zmq.c $(LIBS) -o zmq.pd_linux

test: zmq.pd_linux
	(export DISPLAY=localhost:10.0; pd-ceammc test.pd)

clean:
	rm zmq.pd_linux
