CC=gcc
CFLAGS=-m32 -Wall

all:	main.o func.o
	$(CC) $(CFLAGS) main.o func.o -o fun

main.o:	main.c
	$(CC) $(CFLAGS) -c main.c -o main.o

func.o:	func.s
	nasm -f elf func.s

clean:
	rm -f *.o
