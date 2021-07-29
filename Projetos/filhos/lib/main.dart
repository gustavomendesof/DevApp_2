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
          title: Text("Facebook"),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Container(
          width: double.infinity, //largura equivalente ao 100% do css e html
          padding: EdgeInsets.all(16), //espaçamento dos elementos em px e/ou dp
          decoration:
              BoxDecoration(border: Border.all(width: 3, color: Colors.pink)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly, //alinhamento do main com espaços iguais
              crossAxisAlignment:
                  CrossAxisAlignment.center, //alinhamento do main centralizado
              children: <Widget> //filhos
                  [
                Image.asset("imagens/logo.png"),
                Text(
                  "Textinho abaixo da imagagem",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                RaisedButton(
                  child: Text(
                    "Clique aqui",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  color: Colors.pinkAccent,
                  onPressed: () {},
                )
              ]),
        ));
  }
}
