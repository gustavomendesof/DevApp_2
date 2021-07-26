import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

void main() {
  runApp(MaterialApp(
    title: 'Passando Dados',
    color: Colors.indigoAccent,
    home: TodosScreen(
        todos: List.generate(
      6,
      (i) => Todo(
        'Todo $i',
        'Aqui vai o uma descrição e/ou conteudo do Todo $i',
      ),
    )),
  ));
}

class TodosScreen extends StatelessWidget {
  //chama uma variavel de lista final  buscando o 'todo' com os dados
  //ja gerados pela
  final List<Todo> todos;
  //o widget - classe declara a chava para referencia da lista
  // required - validação para modificar os lançar os elementos na lista
  TodosScreen({Key? key, required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usando o TOdo com Array'),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (contex, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetaiScreen(todo: todos[index])),
              );
            },
          );
        },
      ),
    );
  }
}

class DetaiScreen extends StatelessWidget {
  final Todo todo;

  //No build o todo e required
  DetaiScreen({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //usar o Todo para Criar a interface
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text(todo.description),
      ),
    );
  }
}
