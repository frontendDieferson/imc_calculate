A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.


# Calculadora de IMC em Dart
Uma simples calculadora de Índice de Massa Corporal (IMC) implementada em Dart. Este projeto inclui uma classe Pessoa para representar uma pessoa com nome, peso e altura, além de funções para calcular o IMC e interpretar o resultado.

# Funcionalidades
Captura os dados de uma pessoa, incluindo nome, peso (em kg) e altura (em metros) pelo terminal.
Trata exceções para garantir que os valores inseridos sejam válidos.
Calcula o IMC com base nos valores fornecidos.
Fornece uma interpretação do IMC com base nas categorias tradicionais.
# Estrutura de Arquivos
lib/imc_calculator.dart: Contém a classe Pessoa, as funções calcularIMC e interpretarIMC e a lógica principal do cálculo de IMC.
bin/main.dart: Arquivo de código executável que interage com o usuário para coletar dados e exibir o resultado do cálculo do IMC.
test/imc_calculator_test.dart: Contém testes unitários para verificar o comportamento das funções de cálculo e interpretação do IMC.