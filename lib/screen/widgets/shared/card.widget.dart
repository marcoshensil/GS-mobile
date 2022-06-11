import 'package:flutter/material.dart';
import 'package:mobile_global_solution/screen/themes/app_theme.dart';

class ConsultCard extends StatelessWidget {
  final String nome;
  final int quantidade;

  ConsultCard({this.nome, this.quantidade});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            cardIcon(),
            SizedBox(
              width: 10,
            ),
            cardName(nome),
            Spacer(),
            // cryptoChange(),
          ],
        ),
        SizedBox(
          height: 80,
        ),
        Row(
          children: <Widget>[cardQuantityValue(quantidade)],
        ),
      ],
    );
  }

  Widget cardIcon() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Icon(
            Icons.agriculture_sharp,
            color: primaryColor,
            size: 40,
          )),
    );
  }

  Widget cardName(String name) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        name,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
      ),
    );
  }

  Widget cardQuantityValue(int quantidade) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Row(
          children: [
            Text(
              "Quantidade: ",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            Text(
              quantidade.toString(),
              style: TextStyle(
                color: Colors.grey,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
