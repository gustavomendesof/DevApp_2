import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Rotas Nomeadas',
    //inicinamo com a roda nomeada '/'. O app sempre inicia pelo o widget
    //definido na rota
    initialRoute: '/',
    routes: {
      //Primeira rota nomeada
      '/': (context) => PrimeiraTela(),
      //Segunda rota nomeada
      '/second': (context) => SegundaTela(),
    },
  ));
}

class PrimeiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Tela'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: Text('Ir para a Segunda Tela'),
        ),
      ),
    );
  }
}

class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Tela'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Voltar para a primeira tela'),
        ),
      ),
    );
  }
}
