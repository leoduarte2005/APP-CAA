import 'package:flutter/material.dart';
import 'package:flutter_application_1/settings/settingsMain.dart';

void main() {
  runApp(MyApp()); // Inicializa o aplicativo usando o widget MyApp
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: Config(), // Define BoasVindas como a tela inicial
    );
  }
}
