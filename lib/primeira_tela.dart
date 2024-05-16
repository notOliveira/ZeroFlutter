import 'package:flutter/material.dart';
import 'segunda_tela.dart';
import 'register.dart';

enum Menu { itemUm }

class Primeira extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira tela'),
        actions: <Widget>[
          PopupMenuButton<Menu>(
            itemBuilder: (BuildContext context) => <PopupMenuItem<Menu>>[
              const PopupMenuItem<Menu>(
                value: Menu.itemUm,
                child: Text('Segunda tela'),
              ),
            ],
            onSelected: (Menu item) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Segunda('PopupMenuButton')));
            },
          )
        ],
      ),
      body: Center(
        child: Column(children: <Widget>[
          ElevatedButton(
            child: Text('Abrir 2a. Tela'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Segunda('ElevatedButton')));
            },
          ),
          SizedBox(height: 30.0),
          ElevatedButton(
            child: Text('Abrir Registro'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CadastroScreen()));
            },
          )
        ]),
      ),
    );
  }
}
