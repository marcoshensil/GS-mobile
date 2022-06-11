import 'package:flutter/material.dart';

class BPButtonLight extends StatelessWidget {
  final String label;
  final Function callback;

  BPButtonLight({
    @required this.label,
    @required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 15.0,
            spreadRadius: 1.0,
            offset: Offset(
              1.0,
              1.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(30),
      ),
      child: FlatButton(
        onPressed: callback,
        child: Text(
          label,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
