INC_DIR=../common
CC=gcc
CFLAGS=-m32 -g -W -Wall -pedantic -std=c99 -I$(INC_DIR)
LDFLAGS=-m32

logfind: logfind.o lines.o
	$(CC) $(LDFLAGS) -o logfind logfind.o lines.o

logfind.o: logfind.c
	$(CC) $(CFLAGS) -c logfind.c

lines.o: lines.c
	$(CC) $(CFLAGS) -c lines.c
