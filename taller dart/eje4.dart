List<String> ordenada(List<String> cadenas) {
  cadenas.sort((a, b) {
    for (int i = 0; i < a.length && i < b.length; i++) {
      if (a.codeUnitAt(i) != b.codeUnitAt(i)) {
        return a.codeUnitAt(i) - b.codeUnitAt(i);
      }
    }
    return a.length - b.length;
  });
  return cadenas;
}

void main() {
  List<String> cadenas = ['manzana', '021laptop', 'zapato', '&2top'];
  List<String> resultado = ordenada(cadenas);
  print(resultado);
}
