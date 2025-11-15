#ifndef USUARIOS_H
#define USUARIOS_H

typedef struct {
    char usuario[30];
    char clave[30];
    char nombre[50];
} Usuario;

int login(Usuario *usuarios, int numUsuarios);

int cargarUsuarios(Usuario **usuarios);

#endif

