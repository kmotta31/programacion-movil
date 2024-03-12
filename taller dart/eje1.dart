class Persona {
  String nombre;
  int edad;
  String genero;

  Persona(this.nombre, this.edad, this.genero);

  void saludar() {
    print('Hola, mi nombre es $nombre y tengo $edad años.');
  }
}

void main() {
  var persona = Persona('Juan', 20,'masculino');
  persona.saludar();
}
