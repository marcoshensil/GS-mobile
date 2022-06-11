class InvestimentolInput {
  int id;
  String nome;
  String tipo;
  double valor;
  double juros;

  InvestimentolInput(
      {this.id,
      this.nome,
      this.tipo,
      this.valor
      this.juros});

  InvestimentoInput.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    tipo = json['tipo'];
    valor = json['valor'];
    juros = json['juros'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['tipo'] = this.tipo;
    data['valor'] = this.valor;
    data['juros'] = this.juros;
    return data;
  }
}
