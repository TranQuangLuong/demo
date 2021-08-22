import 'package:demo/text.dart';
import 'package:flutter/material.dart';
import 'loginScreen.dart';
void main() => runApp(loginScreen());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('flutter demo'),
          
        ),
        body: const Center(
          child: Text('hello'),
        ),
      ),
    );
  }
}

class loginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
class text extends StatelessWidget {
  text(String s, {required TextStyle style});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      debugShowCheckedModeBanner: false,
      home: App(),
    );
  }
}