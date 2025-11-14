#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "usuarios.h"

int cargarUsuarios(Usuario **usuarios) {
    FILE *archivo = fopen("vendedores.txt", "r");
    if (!archivo) {
        printf("Error.\n");
        return 0;
    }

    int count = 0;
    char buffer[200];
    
    while (fgets(buffer, sizeof(buffer), archivo)) count++;
    rewind(archivo);

    *usuarios = (Usuario *)malloc(sizeof(Usuario) * count);
    int i = 0;
    while (fgets(buffer, sizeof(buffer), archivo)) {
        sscanf(buffer, "%[^,],%[^,],%[^\n]", 
               (*usuarios)[i].usuario, 
               (*usuarios)[i].clave, 
               (*usuarios)[i].nombre);
        i++;
    }

    fclose(archivo);
    return count;
}

int login(Usuario *usuarios, int numUsuarios) {
    char user[30], key[30]; 
    int intentos = 0;

    while (intentos < 3) {
        printf("Ingrese el usuario: ");
        scanf("%s", user);
        printf("Ingrese la clave: ");
        scanf("%s", key);

        for (int i = 0; i < numUsuarios; i++) {
            if (strcmp(user, usuarios[i].usuario) == 0 && strcmp(key, usuarios[i].clave) == 0) {
                printf("Bienvenido %s\n", usuarios[i].nombre);
                return 1;
            }
        }

        printf("Usuario o clave incorrectos.\n");
        intentos++;
    }

    printf("Demasiados intentos fallidos. Saliendo del sistema ...\n");
    return 0;
}

