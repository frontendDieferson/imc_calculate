class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);
}

double calcularIMC(Pessoa pessoa) {
  if (pessoa.altura <= 0 || pessoa.peso <= 0) {
    throw Exception("Altura e peso devem ser maiores que zero.");
  }
  return pessoa.peso / (pessoa.altura * pessoa.altura);
}

String interpretarIMC(double imc) {
  if (imc < 18.5) {
    return "Abaixo do peso.";
  } else if (imc >= 18.5 && imc < 24.9) {
    return "Peso normal.";
  } else if (imc >= 25 && imc < 29.9) {
    return "Sobrepeso.";
  } else if (imc >= 30 && imc < 34.9) {
    return "Obesidade Grau 1.";
  } else if (imc >= 35 && imc < 39.9) {
    return "Obesidade Grau 2.";
  } else {
    return "Obesidade Grau 3 (Obesidade Mórbida).";
  }
}
