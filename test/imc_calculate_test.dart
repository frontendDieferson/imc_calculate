import 'package:imc_calculate/imc_calculate.dart';
import 'package:test/test.dart';

void main() {
  test('Calculo do IMC', () {
    // Teste para um IMC abaixo do peso.
    expect(calcularIMC(Pessoa("Pessoa 1", 45.0, 1.60)), closeTo(17.58, 0.01));

    // Teste para um IMC normal.
    expect(calcularIMC(Pessoa("Pessoa 2", 70.0, 1.75)), closeTo(22.86, 0.01));

    // Teste para sobrepeso.
    expect(calcularIMC(Pessoa("Pessoa 3", 85.0, 1.70)), closeTo(29.41, 0.01));

    // Adicione mais casos de teste conforme necessário.
  });

  test('Interpretação do IMC', () {
    // Teste para uma pessoa com peso normal.
    expect(interpretarIMC(22.0), "Peso normal.");

    // Teste para uma pessoa com obesidade mórbida.
    expect(interpretarIMC(40.0), "Obesidade Grau 3 (Obesidade Mórbida)");
  });
}
