CC=g++
CFLAGS=-I.
DEPS = functions.h

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

main: main.o hello.o factorial.o 
	$(CC) -o main main.o hello.o factorial.o
