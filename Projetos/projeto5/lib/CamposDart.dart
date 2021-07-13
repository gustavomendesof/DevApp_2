import 'package:flutter/material.dart';

class CamposDart extends StatefulWidget {
  const CamposDart({Key? key}) : super(key: key);

  @override
  _CamposDartState createState() => _CamposDartState();
}

class _CamposDartState extends State<CamposDart> {
  //e um controlador usado como um construtor para declaraçao dos valores do campo
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes de Entrada de Dados"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(30),
            child: TextField(
              //entrada do imput do campo de texto
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "digite um valor"),
              maxLength: 8,
              obscureText: false,
              onSubmitted: (String e) {
                print("O valor foi : " + e);
              },
              controller: _textEditingController,
            ),
          ),
          //ignore: deprecated_menber_use
          RaisedButton(
            child: Text("Enviar"),
            color: Colors.lightBlue,
            onPressed: () {
              print("Valor foi: " + _textEditingController.text);
            },
          )
        ],
      ),
    );
  }
}
