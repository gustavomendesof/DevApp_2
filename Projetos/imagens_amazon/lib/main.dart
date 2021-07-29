import 'package:flutter/material.dart';
//import 'CamposDart.dart'; //esta sublinhado porque não esta sendo usado

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
        title: Text("Amazon - Bem Vindo"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: EdgeInsets.all(18),
        decoration:
            BoxDecoration(border: Border.all(width: 2, color: Colors.black)),
        child: Column(
          children: <Widget>[
            Image.asset("imagens/amazon.jpg"),
            Padding(
                padding: EdgeInsets.all(30),
                child: TextField(keyboardType: TextInputType.text))
          ],
        ),
      ),
    );
  }
}
