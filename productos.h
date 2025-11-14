#ifndef PRODUCTOS_H
#define PRODUCTOS_H

typedef struct {
    int codigo;
    char nombre[50];
    int cantidad;
    float costo;
    float precioVenta;
} Producto;

int cargarProductos(Producto **productos);
int actualizarInventario(Producto *productos, int numProductos);

#endif

