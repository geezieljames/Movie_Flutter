import 'package:flutter/material.dart';

class moviesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies List'),
      ),
      body: ListView(
        children: [
          Card(
      child: ListTile(
      leading: Icon(Icons.warning),
        title: Text('Titulo', style: TextStyle(fontSize: 24.0)),
      subtitle: Text('descricao'),
          )
          ),  Card(
      child: ListTile(
      leading: Icon(Icons.warning),
        title: Text('Titulo', style: TextStyle(fontSize: 24.0)),
      subtitle: Text('descricao'),
          )
          ),  Card(
      child: ListTile(
      leading: Icon(Icons.warning),
        title: Text('Titulo', style: TextStyle(fontSize: 24.0)),
      subtitle: Text('descricao'),
          )
          ),
        ],
      ),
    );
  }
}
