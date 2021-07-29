import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Meu App co Flutter"),
        backgroundColor: Colors.indigoAccent,
      ), //Cabeçalho do App -
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text("Conteudo do App"),
      ), //Corpo do App
      bottomNavigationBar: BottomAppBar(), //rodape
    ),
  ));
}
