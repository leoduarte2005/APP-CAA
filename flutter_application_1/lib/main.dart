import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BoasVindas.dart';
import 'package:flutter_application_1/pages/PageLogin.dart';

void main() {
  runApp(const MyApp()); // Inicializa o aplicativo usando o widget MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: BoasVindas(), // Define BoasVindas como a tela inicial
    );
  }
}
