import 'package:flutter/material.dart';
import 'package:mobile_global_solution/core/models/agricultural_input.model.dart';
import 'package:mobile_global_solution/core/services/api.service.dart';
import 'package:mobile_global_solution/screen/widgets/shared/button-dark.widget.dart';
import 'package:mobile_global_solution/screen/widgets/shared/input-light.widget.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var apiService = ApiService();

  TextEditingController _nomeController = new TextEditingController();

  TextEditingController _fornecedorController = new TextEditingController();

  TextEditingController _quantidadeController = new TextEditingController();

  TextEditingController _valorController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.4,
        title: Text("Cadastrar"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
            child: BPInputLight(
              label: "Nome do produto",
              keyboard: TextInputType.text,
              password: false,
              controller: this._nomeController,
              capitalization: TextCapitalization.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
            child: BPInputLight(
              label: "Fornecedor do produto",
              keyboard: TextInputType.text,
              password: false,
              controller: this._fornecedorController,
              capitalization: TextCapitalization.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
            child: BPInputLight(
              label: "Quantidade do produto",
              keyboard: TextInputType.text,
              password: false,
              controller: this._quantidadeController,
              capitalization: TextCapitalization.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
            child: BPInputLight(
              label: "Valor do produto",
              keyboard: TextInputType.text,
              password: false,
              controller: this._valorController,
              capitalization: TextCapitalization.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
            child: BPButtonDark(
              label: "Cadastrar produto",
              callback: register(),
            ),
          ),
        ],
      ),
    );
  }

  register() {
    var data = new AgriculturalInput();

    if (this._nomeController.text != null || this._nomeController.text == "") {
      data.nome = this._nomeController.text;
    }

    if (this._fornecedorController.text != null ||
        this._fornecedorController.text == "") {
      data.fornecedor = this._fornecedorController.text;
    }

    if (this._quantidadeController.text != null ||
        this._quantidadeController.text == "") {
      data.quantidade = int?.tryParse(this._quantidadeController.text);
    }

    if (this._valorController.text != null ||
        this._valorController.text == "") {
      data.valor = double?.tryParse(this._valorController.text);
    }

    this.apiService.postInsumos(data);
  }
}
