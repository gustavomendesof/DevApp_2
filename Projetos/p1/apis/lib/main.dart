import 'dart:convert';
import 'package:flutter/material.dart';
import 'API.dart';
import 'User.dart';

void main() {
  runApp(MaterialApp(
    home: AppJason(),
  ));
}

class AppJason extends StatefulWidget {
  @override
  _AppJasonState createState() => _AppJasonState();
}

class _AppJasonState extends State<AppJason> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Retorno API Com Jason',
      home: MyListScreen(),
    );
  }
}

class MyListScreen extends StatefulWidget {
  @override
  _MyListScreenState createState() => _MyListScreenState();
}

class _MyListScreenState extends State<MyListScreen> {
  var users = <User>[];

  _getUsers() {
    API.getUsers().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        users = list.map((model) => User.fromJson(model)).toList();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _getUsers();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lista de Usuarios"),
        ),
        body: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(users[index].id.toString()),
                subtitle: Text(users[index].name.toString()),
                trailing: Text(users[index].email.toString()),
              );
            }));
  }
}
