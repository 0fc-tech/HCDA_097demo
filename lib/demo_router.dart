import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
void main() => runApp(RouterApp());

class RouterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Material App',
      routerConfig: GoRouter(
        initialLocation: '/login',
        routes: [
          GoRoute(path: '/',builder: (_, __) => HomePage(),),
          GoRoute(path: '/login',builder: (_, __) => SignInPage(),)
        ]
      ),
    );
  }
}

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: ElevatedButton(
            onPressed: (){
              context.go('/');
            },
            child: Text("Connexion")));
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HomePage'),
        ),
        body: Text('HomePage'));
  }
}

