class Producto {
  String _nombre;
  double _precio;
  int _cantidadInventario;

  Producto(this._nombre, this._precio, this._cantidadInventario);

  String get nombre => _nombre;
  set nombre(String value) => _nombre = value;

  double get precio => _precio;
  set precio(double value) => _precio = value;

  int get cantidadInventario => _cantidadInventario;
  set cantidadInventario(int value) => _cantidadInventario = value;

  void comprar(int cantidad) {
    if (cantidad > 0) {
      _cantidadInventario += cantidad;
      print('Compra de $cantidad unidades de $_nombre realizada');
    } else {
      print('La cantidad debe ser mayor que 0.');
    }
  }

  void vender(int cantidad) {
    if (cantidad > 0 && cantidad <= _cantidadInventario) {
      _cantidadInventario -= cantidad;
      print('Venta de $cantidad unidades de $_nombre realizada');
    } else if (cantidad > _cantidadInventario) {
      print('No hay inventario.');
    } else {
      print('La cantidad debe ser mayor que 0.');
    }
  }

  void mostrarDetalles() {
    print('Detalles del producto:');
    print('Nombre: $_nombre');
    print('Precio: \$$_precio');
    print('Cantidad en inventario: $_cantidadInventario unidades');
  }
}

void main() {
  Producto producto = Producto('Lápiz', 0.5, 100);
  producto.mostrarDetalles();

  producto.comprar(50);
  producto.mostrarDetalles();

  producto.vender(30);
  producto.mostrarDetalles();

  producto.vender(40);
}
