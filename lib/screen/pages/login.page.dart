import 'package:flutter/material.dart';
import 'package:mobile_global_solution/screen/widgets/shared/button-dark.widget.dart';
import 'package:mobile_global_solution/screen/widgets/shared/input-light.widget.dart';

import 'home.page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(grey),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.4,
        title: Text("Login"),
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
              label: " e-mail",
              keyboard: TextInputType.emailAddress,
              password: false,
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
              label: "senha",
              keyboard: TextInputType.text,
              password: true,
              capitalization: TextCapitalization.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25,
              right: 25,
              bottom: 8,
            ),
            child: BPButtonDark(
              label: "Entrar",
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
