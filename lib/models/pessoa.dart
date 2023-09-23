class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  Pessoa(this._nome, this._peso, this._altura);

  String getNome() {
    return _nome;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  double getPeso() {
    return _peso;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getAltura() {
    return _altura;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double calcularIMC(){
    return (_peso / (_altura * _altura));
  }
}