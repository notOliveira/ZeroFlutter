import 'dart:io';
import 'package:flutter/material.dart';

class OrgsScreen extends StatefulWidget {
  @override
  _OrgsScreenState createState() => _OrgsScreenState();
}

class _OrgsScreenState extends State<OrgsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orgs'),
      ),
      body: Stack(
        children: <Widget>[
          // Imagem de fundo
          
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Minhas organizações',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  GridView.count(
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    children: List.generate(6, (index) {
                      return Card(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Image.asset(
                                'assets/org.png',
                                width: 400.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Organização ${index + 1}',
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Ação do botão Visualizar
                              },
                              child: Text('Visualizar'),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Orgs Example',
    home: OrgsScreen(),
  ));
}
