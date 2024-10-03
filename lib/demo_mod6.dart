import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('appbarTitle'),
        ),
        body: FormConnexion());
  }
}
class FormConnexion extends StatefulWidget {
  const FormConnexion({super.key});

  @override
  State<FormConnexion> createState() => _FormConnexionState();
}

class _FormConnexionState extends State<FormConnexion> {
  final controllerEmail = TextEditingController(text: "");
  final controllerPwd = TextEditingController(text: "");
  var showMsg = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(controller: controllerEmail,),
        TextFormField(controller: controllerPwd,),
        ElevatedButton(onPressed: () {
          setState(() {
            showMsg=true;
          });
        }, child: Text("Se connecter")),
        if(showMsg)
          Text("Bienvenue à toi ${controllerEmail.text}")
      ],
    );
  }
}

