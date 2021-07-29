import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: "Meu primeiro App Flutter",
      home: Container(
        color: Colors.pinkAccent,
        child: Column(
          children: <Widget>[
            //ignore: deprecated_member_use
            FlatButton(
                onPressed: () {
                  print("Clicar");
                },
                child: Text(
                  "Este é um Botão",
                  style: TextStyle(
                    fontSize: 42,
                    color: Colors.cyanAccent,
                    decoration: TextDecoration.none,
                  ),
                ))
          ],
        ),
      )));
}
