import 'dart:io';

void main() {
  // Regra de 3
  // Funcao que recebe os parametros sendo um deles nulo
  // verificar se é inversamente proporcional ou diretamente proporcional

  double problema1 = regraDeTres(
      grandeza1: 200.0,
      grandeza2: 1000.00,
      grandeza3: 20.0,
      isDiretamenteProporcional: true);

  print('Resultado de x é: $problema1');

  double problema2 = regraDeTres(
      grandeza1: 15.0,
      grandeza2: 10.00,
      grandeza3: 18.0,
      isDiretamenteProporcional: false);

  print('Resultado de x é: $problema2');

  double problema3 = regraDeTres(
      grandeza1: insereValor('valor da primeira grandeza'),
      grandeza2: insereValor('valor da segunda grandeza'),
      grandeza3: insereValor('Valor da terceira grandeza'),
      isDiretamenteProporcional: true);

  print('Resultado de x é: $problema3');
}

/// Retorna o resultado da equação para se encontrar o valor de x com base nos tipos de grandeza e valores inseridos
double regraDeTres(
    {required double grandeza1,
    required double grandeza2,
    required double grandeza3,
    required bool isDiretamenteProporcional}) {
  if (isDiretamenteProporcional) {
    return (grandeza2 * grandeza3) / grandeza1;
  } else {
    return (grandeza1 * grandeza3) / grandeza2;
  }
}

double insereValor(String? label) {
  if (label == null || label == '') {
    print('Digite um valor: ');
  } else {
    print(label);
  }

  String? valor = stdin.readLineSync();

  if (valor != null && valor != '') {
    return double.parse(valor);
  } else {
    print('Você precisa digitar um valor');
    return insereValor(null);
  }
}
