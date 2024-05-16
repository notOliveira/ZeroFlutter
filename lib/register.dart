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
  TextEditingController _cepController = TextEditingController();
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
          Opacity(
            opacity: 0.5, // Definindo a opacidade desejada
            child: Image.asset(
              'assets/register-bg.jpg', // Substitua 'background_image.jpg' pelo nome do seu arquivo de imagem
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              padding: EdgeInsets.all(32.0),
              margin: EdgeInsets.all(32.0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Registrar-se',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Nome',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(248, 175, 31, 1), fontSize: 20),
                            ),
                            SizedBox(height: 8.0),
                            TextFormField(
                              controller: _nomeController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                                hintText: 'Fulano',
                                hintStyle: TextStyle(color: Color.fromARGB(255, 20, 20, 20)),
                                filled: true, // Define se o campo deve ser preenchido
                                fillColor: Color.fromRGBO(240, 248, 255, 1),
                              ),
                              style: TextStyle( // Adicionando estilo ao texto do campo
                                color: Colors.black,
                                fontSize: 16.0
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Sobrenome',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(248, 175, 31, 1), fontSize: 20),
                            ),
                            SizedBox(height: 8.0),
                            TextFormField(
                              controller: _sobrenomeController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                                hintText: 'Silva',
                                hintStyle: TextStyle(color: Color.fromARGB(255, 20, 20, 20)),
                                filled: true, // Define se o campo deve ser preenchido
                                fillColor: Color.fromRGBO(240, 248, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(248, 175, 31, 1), fontSize: 20),
                      ),
                      SizedBox(height: 8.0),
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                          hintText: 'fulano@email.com',
                          hintStyle: TextStyle(color: Color.fromARGB(255, 20, 20, 20)),
                          filled: true, // Define se o campo deve ser preenchido
                          fillColor: Color.fromRGBO(240, 248, 255, 1),
                          
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'CEP',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(248, 175, 31, 1), fontSize: 20),
                      ),
                      SizedBox(height: 8.0),
                      TextFormField(
                        controller: _cepController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                          hintText: '00000-000',
                          hintStyle: TextStyle(color: Color.fromARGB(255, 20, 20, 20)),
                          filled: true, // Define se o campo deve ser preenchido
                          fillColor: Color.fromRGBO(240, 248, 255, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Senha',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(248, 175, 31, 1), fontSize: 20),
                      ),
                      SizedBox(height: 8.0),
                      TextFormField(
                        controller: _senhaController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                          hintText: 'Sua senha aqui',
                          hintStyle: TextStyle(color: Color.fromARGB(255, 20, 20, 20)),
                          filled: true, // Define se o campo deve ser preenchido
                          fillColor: Color.fromRGBO(240, 248, 255, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Repita a senha',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(248, 175, 31, 1), fontSize: 20),
                      ),
                      SizedBox(height: 8.0),
                      TextFormField(
                        controller: _repitasenhaController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                          hintText: 'Repita a senha acima',
                          hintStyle: TextStyle(color: Color.fromARGB(255, 20, 20, 20)),
                          filled: true, // Define se o campo deve ser preenchido
                          fillColor: Color.fromRGBO(240, 248, 255, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40.0),
                  ElevatedButton(
                    onPressed: () {
                      _cadastrar();
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        'Cadastrar',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
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
    String cep = _cepController.text;
    String senha = _senhaController.text;
    String repitasenha = _repitasenhaController.text;

    // Aqui você pode adicionar lógica para processar os dados do cadastro
    // Por exemplo, enviar para um servidor, salvar localmente, etc.
    
    // Resetar os campos após o cadastro
    _nomeController.clear();
    _sobrenomeController.clear();
    _emailController.clear();
    _senhaController.clear();
    _cepController.clear();
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
