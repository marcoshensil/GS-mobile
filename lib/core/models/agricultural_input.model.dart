class AgriculturalInput {
  int id;
  String nome;
  String fornecedor;
  int quantidade;
  int peso;
  double valor;

  AgriculturalInput(
      {this.id,
      this.nome,
      this.fornecedor,
      this.quantidade,
      this.peso,
      this.valor});

  AgriculturalInput.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    fornecedor = json['fornecedor'];
    quantidade = json['quantidade'];
    peso = json['peso'];
    valor = json['valor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['fornecedor'] = this.fornecedor;
    data['quantidade'] = this.quantidade;
    data['peso'] = this.peso;
    data['valor'] = this.valor;
    return data;
  }
}
