import 'package:flutter/material.dart';

class Segunda extends StatelessWidget {
  @override
  String origem;
  Segunda(this.origem);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda tela"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Acessei usando " + origem),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                },
              child: Text("Voltar"),
            )
          ],
        )
      ),
    );
  }
}
