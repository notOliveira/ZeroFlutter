import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:app/models/Organization.dart';
import 'package:app/services/organization_service.dart';
import 'package:app/create_org_screen.dart';

class OrgsScreen extends StatefulWidget {
  @override
  _OrgsScreenState createState() => _OrgsScreenState();
}

class _OrgsScreenState extends State<OrgsScreen> {
  final OrganizationService _organizationService = OrganizationService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orgs'),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
              StreamBuilder<List<Organization>>(
                stream: _organizationService.getOrganizations(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Erro: ${snapshot.error}');
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Text('Nenhuma organização encontrada.');
                  }

                  List<Organization> orgs = snapshot.data!;
                  return GridView.count(
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 50.0,
                    mainAxisSpacing: 50.0,
                    children: orgs.map((org) {
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
                                  org.nome,
                                  style: TextStyle(
                                    fontSize: 23.0,
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
                    }).toList(),
                  );
                },
              ),
              SizedBox(height: 50.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CreateOrgScreen(),
                        ),
                      );
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
