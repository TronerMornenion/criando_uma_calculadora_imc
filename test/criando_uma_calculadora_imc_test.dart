import 'package:criando_uma_calculadora_imc/src/imc.dart';
import 'package:test/test.dart';

import 'pessoa_test.dart';

void main() {
  test('imc = 31.31', () {
    expect(double.parse(p1.calcularIMC().toStringAsFixed(2)), 31.31);
  });
  test('imc = 23.15', () {
    expect(double.parse(p2.calcularIMC().toStringAsFixed(2)), 23.15);
  });
  test('imc = 17.31', () {
    expect(double.parse(p3.calcularIMC().toStringAsFixed(2)), 17.31);
  });
  test('Obsedidade Grau I', () {
    expect(IMC().verificarIMC(p1), "Obesidade Grau I");
  });
  test('Saudável', () {
    expect(IMC().verificarIMC(p2), "Saudável");
  });
  test('Magreza leve', () {
    expect(IMC().verificarIMC(p3), "Magreza leve");
  });

}
