import 'package:flutter/material.dart';

class Produto extends StatefulWidget {
  const Produto({Key? key}) : super(key: key);

  @override
  _ProdutoState createState() => _ProdutoState();
}

class _ProdutoState extends State<Produto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Produto"),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            if (index > 0) return null;
            return Container(
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Image.asset(
                      "imagens/copo.jpg",
                      width: 500,
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "Copo",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    color: Colors.blue,
                  ),
                  Padding(
                    padding: EdgeInsets.all(30),
                    child: Image.asset(
                      "imagens/maca.jpg",
                      width: 300,
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "Maça",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    color: Colors.red,
                  ),
                  Padding(
                    padding: EdgeInsets.all(30),
                    child: Image.asset(
                      "imagens/copo.jpg",
                      width: 300,
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "Copo",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    color: Colors.blue,
                  ),
                ],
              ),
            );
          }))
        ],
      ),
    );
  }
}
