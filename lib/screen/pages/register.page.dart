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
      backgroundColor: Color(grey),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.4,
        title: Text("Registrar"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25,
              right: 25,
              bottom: 8,
            ),
            child: BPInputLight(
              label: "Tipo",
              keyboard: TextInputType.text,
              password: false,
              controller: this._nomeController,
              capitalization: TextCapitalization.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25,
              right: 25,
              bottom: 8,
            ),
            child: BPInputLight(
              label: "Valor",
              keyboard: TextInputType.text,
              password: false,
              controller: this._fornecedorController,
              capitalization: TextCapitalization.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25,
              right: 25,
              bottom: 25,
            ),
            child: BPInputLight(
              label: "Juros",
              keyboard: TextInputType.text,
              password: false,
              controller: this._quantidadeController,
              capitalization: TextCapitalization.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25,
              right: 25,
              bottom: 8,
            ),
            ),
          ),
        ],
      ),
    );
  }

  register() {
    var data = new InvestimentolInput();

    if (this._nomeController.text != null || this._nomeController.text == "") {
      data.nome = this._nomeController.text;
    }

    if (this._tipoController.text != null ||
        this._tipoController.text == "") {
      data.tipo = this._tipoController.text;
    }

    if (this._valorController.text != null ||
        this._valorController.text == "") {
      data.valor = double?.tryParse(this._valorController.text);
    }
    
    if (this._jurosController.text != null ||
        this._jurosController.text == "") {
      data.juros = int?.tryParse(this._jurosController.text);
    }

    this.apiService.postInvestimento(data);
  }
}
