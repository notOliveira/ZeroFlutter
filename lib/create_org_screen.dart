import 'package:flutter/material.dart';
import 'package:app/models/Organization.dart';
import 'package:app/services/organization_service.dart';

class CreateOrgScreen extends StatefulWidget {
  @override
  _CreateOrgScreenState createState() => _CreateOrgScreenState();
}

class _CreateOrgScreenState extends State<CreateOrgScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final OrganizationService _organizationService = OrganizationService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar Organização'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Nome da organização'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o nome da organização';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _organizationService.addOrganization(
                      Organization(nome: _nameController.text),
                    );
                    Navigator.of(context).pop();
                  }
                },
                child: Text('Criar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
