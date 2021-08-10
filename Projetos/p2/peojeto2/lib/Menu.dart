import 'package:flutter/material.dart';
import 'package:peojeto2/Empresa.dart';
import 'package:peojeto2/Home.dart';
import 'package:peojeto2/Produtos.dart';
import 'package:peojeto2/Sobre.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Link"),
        iconTheme: IconThemeData(color: Colors.red),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("Cabeçalho"),
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage("img/perfil.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Menu Home",
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              title: Text("Menu Empresa"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Empresa()));
              },
            ),
            ListTile(
              title: Text("Menu Sobre"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Sobre()));
              },
            ),
            Divider(),
            ListTile(
              tileColor: Colors.teal,
              title: Text("Menu Produtos"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Produtos()));
              },
            ),
            Divider(),
            ListTile(
              title: Text("Menu Sair"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("Conteúdo Body"),
      ),
    );
  }
}
