List<List<int>> separarParesImpares(List<int> numeros) {
  List<int> pares = [];
  List<int> impares = [];

  for (var numero in numeros) {
    if (numero % 2 == 0) {
      pares.add(numero);
    } else {
      impares.add(numero);
    }
  }
  pares.sort();
  impares.sort();

  return [pares, impares];
}

void main() {
  List<int> numeros = [4, 245, 63, 8, 5, 24, 17];
  List<List<int>> resultado = separarParesImpares(numeros);

  print(resultado); 
}
