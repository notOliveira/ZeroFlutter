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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Minhas organizações',
                style: TextStyle(
                  color: Colors.black,
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
                            padding: const EdgeInsets.all(7.0),
                            child: Text(
                              'Organização ${index + 1}',
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
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
