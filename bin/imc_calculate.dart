import 'dart:io';
import 'package:imc_calculate/imc_calculate.dart';

void main() {
  try {
    stdout.write("Digite o nome da pessoa: ");
    String nome = stdin.readLineSync()!;

    stdout.write("Digite o peso (em kg): ");
    double peso = double.parse(stdin.readLineSync()!);

    if (peso <= 0) {
      throw Exception("O peso deve ser maior que zero.");
    }

    stdout.write("Digite a altura (em metros): ");
    double altura = double.parse(stdin.readLineSync()!);

    if (altura <= 0) {
      throw Exception("A altura deve ser maior que zero.");
    }

    Pessoa pessoa = Pessoa(nome, peso, altura);

    double imc = calcularIMC(pessoa);
    print("O IMC de ${pessoa.nome} é: $imc");

    String interpretacao = interpretarIMC(imc);
    print("Interpretação do IMC: $interpretacao");
  } catch (e) {
    print("Erro: $e");
  }
}
