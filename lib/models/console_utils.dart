import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static String lerStringComTexto(String texto){
    print(texto);
    return lerString();
  }

  static double? lerDouble() {
    try {
      return double.parse(lerString());
    } catch (e) {
      return null;
    }
  }

  static double? lerDoubleComTexto(String texto) {
    print(texto);
    return lerDouble();
  }
}