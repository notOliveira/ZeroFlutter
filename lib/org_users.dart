import 'dart:io';
import 'package:flutter/material.dart';

class OrgUsersScreen extends StatefulWidget {
  @override
  _OrgUsersScreen createState() => _OrgUsersScreen();
}

class _OrgUsersScreen extends State<OrgUsersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orgs'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Stack(
                children: [
                  Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/volunteer.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5),
                          BlendMode.darken,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 400,
                      alignment: Alignment.center,
                      child: Text(
                        'Usuários - Organização 1',
                        style: TextStyle(
                          fontSize: 50.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50.0),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Todos os usuários da organização',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Ação do botão Convidar usuário
                      },
                      child: Text(
                        'Convidar usuário',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Orgs Example',
    home: OrgUsersScreen(),
  ));
}
