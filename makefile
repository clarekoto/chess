CC = gcc

CFLAGS = -Wall -pedantic -std=gnu99 -Wextra

DEBUG = -g

.DEFAULT_TARGET := all

.PHONY: all debug clean

debug: $(CFLAGS) += $(DEBUG)
debug: all

all: chessengine

chessengine.o: chessengine.c
	$(CC) $(CFLAGS) -c $^ -o $@

chessengine: chessengine.o
	$(CC) $(CFLAGS) $^ -o $@


