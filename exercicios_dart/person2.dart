class Person2 {
  String name;
  String _cpf;
  get cpf {
    return _cpf;
  }
  set cpf(String newCPF) {
    this._cpf = newCPF;
  }
}