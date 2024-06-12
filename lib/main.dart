import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'primeira_tela.dart';
import 'segunda_tela.dart';
import 'register.dart';
import 'orgs.dart';
import 'org_users.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyCZb_wtlWDrabw9hyZjbYqUMPIMAb48p2E",
      authDomain: "zeroflutter0.firebaseapp.com",
      projectId: "zeroflutter0",
      storageBucket: "zeroflutter0.appspot.com",
      messagingSenderId: "75022678624",
      appId: "1:75022678624:web:14bd1a9357cf366e9f2105",
      measurementId: "G-68XE8KJ4KR",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/primeira_tela",
      routes: {
        "/primeira_tela": (context) => Primeira(),
        "/segunda_tela": (context) => Segunda("a barra de pesquisa"),
        "/register": (context) => CadastroScreen(),
        "/orgs": (context) => OrgsScreen(),
        "/orgs/users": (context) => OrgUsersScreen(),
      },
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('You have pushed the button this many times:'),
              Text('$_counter', style: Theme.of(context).textTheme.headlineMedium),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
