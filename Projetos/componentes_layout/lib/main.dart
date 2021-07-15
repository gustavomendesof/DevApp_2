import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //classe-widget que fornece o layout orientado para o MaterialDesign
        home: Scaffold(
      //home define toda a entrada de componentes, classes na aplicação. Scaffol oferece base para um layout
      appBar: AppBar(
        title: Text("Flutter Layout - Colunas e Linhas"),
      ),
      body: Center(
        child: Row(
          //empilha os filhos (objetos) na vertical
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //vertical
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('imagens/astronauta.png'),
            Image.asset('imagens/espaco.png'),
            Image.asset('imagens/pin.png'),
            Image.asset('imagens/planeta.png'),
          ],
        ),
      ),
    ));
  }
}
