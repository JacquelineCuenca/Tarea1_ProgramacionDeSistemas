#ifndef USUARIOS_H
#define USUARIOS_H

typedef struct {
    int id;
    char nombre[50];
    char clave[20];
} Usuario;


int login(Usuario *usuarios, int numUsuarios);

int cargarUsuarios(Usuario **usuarios);

#endif

