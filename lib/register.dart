import 'package:flutter/material.dart';

class CadastroScreen extends StatefulWidget {
  @override
  _CadastroScreenState createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _sobrenomeController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();
  TextEditingController _repitasenhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: Stack(
        children: <Widget>[
          // Imagem de fundo
          Image.asset(
            'assets/register-bg.jpg', // Substitua 'background_image.jpg' pelo nome do seu arquivo de imagem
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.6,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[200]?.withOpacity(0.8), // Definindo uma cor de fundo com opacidade
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          controller: _nomeController,
                          decoration: InputDecoration(labelText: 'Nome'),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Expanded(
                        child: TextFormField(
                          controller: _sobrenomeController,
                          decoration: InputDecoration(labelText: 'Sobrenome'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(labelText: 'Email'),
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    controller: _senhaController,
                    obscureText: true,
                    decoration: InputDecoration(labelText: 'Senha'),
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    controller: _repitasenhaController,
                    obscureText: true,
                    decoration: InputDecoration(labelText: 'Repita a senha'),
                  ),
                  SizedBox(height: 64.0),
                  ElevatedButton(
                    onPressed: () {
                      _cadastrar();
                    },
                    child: Text('Cadastrar'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _cadastrar() {
    String nome = _nomeController.text;
    String sobrenome = _sobrenomeController.text;
    String email = _emailController.text;
    String senha = _senhaController.text;
    String repitasenha = _repitasenhaController.text;

    // Aqui você pode adicionar lógica para processar os dados do cadastro
    // Por exemplo, enviar para um servidor, salvar localmente, etc.
    
    // Resetar os campos após o cadastro
    _nomeController.clear();
    _sobrenomeController.clear();
    _emailController.clear();
    _senhaController.clear();
    _repitasenhaController.clear();

    // Exibir uma mensagem de sucesso ou redirecionar para outra tela, etc.
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Cadastro realizado com sucesso!')),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Cadastro Example',
    home: CadastroScreen(),
  ));
}
