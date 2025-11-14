#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include "usuarios.h"
#include "productos.h"

int main() {
    Usuario *usuarios;
    int numUsuarios = cargarUsuarios(&usuarios);
    if (numUsuarios == 0){
        return 1;
    }

    if (!login(usuarios, numUsuarios)) {
        free(usuarios);
        return 1;
    }
    free(usuarios);

    Producto *productos;
    int numProductos = cargarProductos(&productos);
    if (numProductos == 0){
        return 1;
    }

    // Registrar venta
    int codigo, cantidad;
    char continuar = 's';
    int lastFactura = 0;
    
    FILE *archivoVentas = fopen("ventas.txt", "r");
    if (archivoVentas) {
        char buffer[200];
        while (fgets(buffer, sizeof(buffer), archivoVentas)) {
            sscanf(buffer, "%d,", &lastFactura);
        }
        fclose(archivoVentas);
    }
    lastFactura++;

    printf("Numero de factura: %d\n", lastFactura);
    archivoVentas = fopen("ventas.txt", "a");
    if (!archivoVentas) {
        printf("Error.\n");
        return 1;
    }

    char fecha[20];
    time_t t = time(NULL);
    struct tm tm = *localtime(&t);
    sprintf(fecha, "%04d-%02d-%02d", tm.tm_year+1900, tm.tm_mon+1, tm.tm_mday);


    while (continuar == 's') {
        printf("Codigo de producto: ");
        scanf("%d", &codigo);
        printf("Cantidad: ");
        scanf("%d", &cantidad);

        int encontrado = 0;
        for (int i = 0; i < numProductos; i++) {
            if (productos[i].codigo == codigo) {
                encontrado = 1;
                if (productos[i].cantidad < cantidad) {
                    printf("No hay suficiente inventario.\n");
                } else {
                    productos[i].cantidad -= cantidad;
                    fprintf(archivoVentas, "%d,%d,%s,%d,%.2f,%.2f,%s\n",
                            lastFactura,
                            productos[i].codigo,
                            productos[i].nombre,
                            cantidad,
                            productos[i].costo,
                            productos[i].precioVenta,
                            fecha);
                    printf("Producto agregado a la venta.\n");
                }
                break;
            }
        }

        if (!encontrado) printf("Producto no encontrado.\n");
        printf("Registrar otro producto? (s/n): ");
        scanf(" %c", &continuar);
    }

    fclose(archivoVentas);
    actualizarInventario(productos, numProductos);
    free(productos);

    printf("Venta registrada correctamente.\n");
    return 0;
}

