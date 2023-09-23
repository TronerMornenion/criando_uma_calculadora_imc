import 'dart:io';

class NomeInvalidoException implements Exception {
  String error() => "Nome inválido";

  @override
  String toString() {
    return "NomeInvalidoException: ${error()}";
  }
  
  String? verificarNome(String nome) {
    try {
    if (nome.trim() == ""){
      throw NomeInvalidoException();
    }
    return nome;
  } on NomeInvalidoException {
    return "Nome Padrão";
  } catch (e) {
    exit(0);
  }
  }
}