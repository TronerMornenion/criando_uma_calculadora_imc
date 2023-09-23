import 'dart:io';

import 'package:criando_uma_calculadora_imc/exception/altura_invalida_exception.dart';
import 'package:criando_uma_calculadora_imc/models/pessoa.dart';

class IMC {
  String? verificarIMC(Pessoa pessoa) {
    double imc = pessoa.calcularIMC();

    try {
      if (pessoa.getAltura() <= 0) {
        throw AlturaInvalidaException();
      }
      if (imc < 16) {
        return "Magreza grave";
      } else if (imc >= 16 && imc < 17) {
        return "Magreza moderada";
      } else if (imc >= 17 && imc < 18.5) {
        return "Magreza leve";
      } else if (imc >= 18.5 && imc < 25) {
        return "Saudável";
      } else if (imc >= 25 && imc < 30) {
        return "Sobrepeso";
      } else if (imc >= 30 && imc < 35) {
        return "Obesidade Grau I";
      } else if (imc >= 35 && imc < 40) {
        return "Obesidade Grau II (severa)";
      } else if (imc >= 40) {
        return "Obesidade Grau III (mórbida)";
      }
    } on AlturaInvalidaException {
      print("Altura inválida");
      exit(0);
    } catch (e) {
      return null;
    }
    return null;
  }
}
