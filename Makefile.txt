CC = gcc
CFLAGS = -Wall -g
OBJ = Main.o usuarios.o productos.o
EXE = Sistema

all: $(EXE)

$(EXE): $(OBJ)
	$(CC) $(CFLAGS) -o $(EXE) $(OBJ)

Main.o: Main.c usuarios.h productos.h
	$(CC) $(CFLAGS) -c Main.c

usuarios.o: usuarios.c usuarios.h
	$(CC) $(CFLAGS) -c usuarios.c

productos.o: productos.c productos.h
	$(CC) $(CFLAGS) -c productos.c

clean:
	rm -f *.o $(EXE)
