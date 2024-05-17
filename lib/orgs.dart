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
      body: SingleChildScrollView(
        child: Padding(
          // margin left and right 200
          padding: const EdgeInsets.symmetric(horizontal: 200.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Minhas organizações',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'helvetica_neue_light',
                ),
              ),
              SizedBox(height: 50.0),
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 50.0,
                mainAxisSpacing: 50.0,
                children: List.generate(6, (index) {
                  return Container(
                    width: 300.0,
                    height: 300.0,
                    child: Card(
                      color: Color.fromRGBO(255, 248, 232, 1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Image.asset(
                              'assets/org.png',
                              fit: BoxFit.contain,
                              width: 400,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Text(
                              'Organização ${index + 1}',
                              style: TextStyle(
                                fontSize: 23.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          // Este botão é para cada card de organização
                          Container(
                            width: double.infinity,
                            height: 50.0,
                            child: ElevatedButton(
                              onPressed: () {
                                // Ação do botão Visualizar
                              },
                              child: Text('Visualizar', style: TextStyle(fontSize: 20.0, color: Colors.white)),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(248, 175, 31, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: 50.0),
              // Este é o botão para criar uma nova organização
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Ação do botão de criar organização
                    },
                    child: Text('+ Criar organização', style: TextStyle(fontSize: 20.0, color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.all(20.0),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50.0),
            ],
          ),
        ),
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
