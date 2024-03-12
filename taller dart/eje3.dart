Object palindromas(String cadena) {

  String cadenaInvertida = cadena.split('').reversed.join();

  String resultado = cadenaInvertida.toLowerCase().replaceAll(' ', '');

  if (resultado == cadena.toLowerCase().replaceAll(' ', '')){
    return true;
  }

  return cadenaInvertida;
}

void main() {
  String cadena = 'holaaloh';
  Object resultado = palindromas(cadena);
  print(resultado);
}
