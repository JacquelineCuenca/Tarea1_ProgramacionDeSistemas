#ifndef PRODUCTOS_H
#define PRODUCTOS_H

typedef struct {
    int codigo;
    int cantidad;
    float costo;
    float precioVenta;
    char nombre[50];
} Producto;


int cargarProductos(Producto **productos);
int actualizarInventario(Producto *productos, int numProductos);

#endif

