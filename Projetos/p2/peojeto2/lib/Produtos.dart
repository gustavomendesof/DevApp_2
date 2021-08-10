import 'package:flutter/material.dart';

class Produtos extends StatefulWidget {
  const Produtos({Key? key}) : super(key: key);

  @override
  _ProdutosState createState() => _ProdutosState();
}

class _ProdutosState extends State<Produtos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Produtos"),
      ),
      body: Container(
        child: Column(
          children: <Widget> [
            //Text("CheckBox"),
                CheckboxListTile(
                title: Text("Produto Iphone: "),
                value: true,
                onChanged: (_valorcheck) {
                }),
                CheckboxListTile(
                title: Text("Produto Android: "),
                value: true,
                onChanged: (_valorcheck) {
                }),
                CheckboxListTile(
                title: Text("Produto Windows: "),
                value: false,
                onChanged: (_valorcheck) {
                }),
          ],
        ),
      ),
    );
  }
}
