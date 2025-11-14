#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "productos.h"

int cargarProductos(Producto **productos) {
    FILE *archivo = fopen("producto.txt", "r");
    if (!archivo) {
        printf("Error.\n");
        return 0;
    }

    int count = 0;
    char buffer[200];
    
    while (fgets(buffer, sizeof(buffer), archivo)) count++;
    rewind(archivo);

    *productos = (Producto *)malloc(sizeof(Producto) * count);
    int i = 0;
    while (fgets(buffer, sizeof(buffer), archivo)) {
        sscanf(buffer, "%d,%[^,],%d,%f,%f",
               &(*productos)[i].codigo,
               (*productos)[i].nombre,
               &(*productos)[i].cantidad,
               &(*productos)[i].costo,
               &(*productos)[i].precioVenta);
        i++;
    }

    fclose(archivo);
    return count;
}

int actualizarInventario(Producto *productos, int numProductos) {
    FILE *archivo = fopen("producto.txt", "w");
    if (!archivo) {
        printf("Error al actualizar.\n");
        return 0;
    }

    for (int i = 0; i < numProductos; i++) {
        fprintf(archivo, "%d,%s,%d,%.2f,%.2f\n",
                productos[i].codigo,
                productos[i].nombre,
                productos[i].cantidad,
                productos[i].costo,
                productos[i].precioVenta);
    }

    fclose(archivo);
    return 1;
}

