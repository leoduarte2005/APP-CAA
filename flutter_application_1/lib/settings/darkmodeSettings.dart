import 'package:flutter/material.dart';

class DarkModeSettings extends StatefulWidget {
  @override
  _DarkModeSettingsState createState() => _DarkModeSettingsState();
}

class _DarkModeSettingsState extends State<DarkModeSettings> {
  bool _darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Cor da barra superior igual à tela anterior
        title: Text(
          'Modo Escuro',
          style: TextStyle(color: Colors.white), // Cor do texto branco
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue.shade300, Colors.blue.shade800], // Gradiente azul
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.transparent, // Cor de fundo transparente
                    child: Text(
                      'Modo Escuro',
                      style: TextStyle(fontSize: 18, color: Colors.white), // Texto branco
                    ),
                  ),
                ),
                Switch(
                  value: _darkModeEnabled,
                  onChanged: (value) {
                    setState(() {
                      _darkModeEnabled = value;
                    });
                    // Lógica para alterar o tema do aplicativo
                    ThemeMode mode = value ? ThemeMode.dark : ThemeMode.light;
                    _setDarkMode(mode);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _setDarkMode(ThemeMode mode) {
    // adicionar aqui a lógica para alterar o tema do aplicativo
    // usar Provider para notificar os widgets sobre a alteração do tema
  }
}
