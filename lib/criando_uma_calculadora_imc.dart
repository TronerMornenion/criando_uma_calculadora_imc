import 'package:criando_uma_calculadora_imc/exception/nome_invalido_exception.dart';
import 'package:criando_uma_calculadora_imc/models/console_utils.dart';
import 'package:criando_uma_calculadora_imc/models/pessoa.dart';
import 'package:criando_uma_calculadora_imc/src/imc.dart';

void executar() {
  print("Calculadora de IMC - Venha ver como está sua saúde");

  String nome = ConsoleUtils.lerStringComTexto("Digite seu nome: ");

  var nomeVerificado = NomeInvalidoException().verificarNome(nome);

  double? peso = ConsoleUtils.lerDoubleComTexto("Digite seu peso: ");
  while (peso == null) {
    peso = ConsoleUtils.lerDoubleComTexto("Digite seu peso: ");
  }

  double? altura = ConsoleUtils.lerDoubleComTexto("Digite sua altura:");
  while (altura == null) {
    altura = ConsoleUtils.lerDoubleComTexto("Digite seu altura: ");
  }

  var pessoa = Pessoa(nomeVerificado!, peso, altura);

  var resultado = IMC().verificarIMC(pessoa);

  if (resultado != null) {
    print(
        "${pessoa.getNome()}: seu IMC deu ${pessoa.calcularIMC().toStringAsFixed(2)} e você está $resultado");
  } else {
    print("${pessoa.getNome()}: Não foi possível calcular seu IMC");
  }
}
