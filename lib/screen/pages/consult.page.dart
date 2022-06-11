import 'package:flutter/material.dart';
import 'package:mobile_global_solution/core/data/mock_data.dart';
//import 'package:mobile_global_solution/core/services/api.service.dart';
import 'package:mobile_global_solution/screen/widgets/shared/card.widget.dart';

class ConsultPage extends StatefulWidget {
  @override
  _ConsultPageState createState() => _ConsultPageState();
}

class _ConsultPageState extends State<ConsultPage> {
  var data = MockData.getData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.4,
        title: Text("Ver"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, int i) {
                  return Container(
                    padding: EdgeInsets.fromLTRB(9, 9, 9, 0),
                    height: 210,
                    width: double.maxFinite,
                    child: Card(
                      elevation: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.light brown,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(7),
                          child: Stack(children: <Widget>[
                            Align(
                              alignment: Alignment.centerRight,
                              child: Stack(
                                children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 9, top: 4),
                                      child: Column(
                                        children: <Widget>[
                                          ConsultCard(
                                            nome: data[i]["nome"],
                                            quantidade: data[i]["tipo"],
                                          )
                                        ],
                                      ))
                                ],
                              ),
                            )
                          ]),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
