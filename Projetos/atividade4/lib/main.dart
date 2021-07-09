import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Meu App - Espaço"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          width: double.infinity, //largura equivalente ao 100% do css e html
          padding: EdgeInsets.all(16), //espaçamento dos elementos em px e/ou dp
          child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly, //alinhamento do main com espaços iguais
              crossAxisAlignment:
                  CrossAxisAlignment.center, //alinhamento do main centralizado
              children: <Widget> //filhos
                  [
                Image.asset("imagens/austro.jpg"),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                Image.asset("imagens/espacial.jpg"),
                RaisedButton(
                  child: Text(
                    "Entrar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  color: Colors.blue,
                  onPressed: () {},
                )
              ]),
        ));
  }
}
