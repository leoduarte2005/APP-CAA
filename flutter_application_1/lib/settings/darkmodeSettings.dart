import 'package:flutter/material.dart';

class DarkModeSettings extends StatefulWidget {
  @override
  _DarkModeSettingsState createState() => _DarkModeSettingsState();
}

class _DarkModeSettingsState extends State<DarkModeSettings> {
  bool _darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    double containerHeight = MediaQuery.of(context).size.height * 0.1; // Definindo a altura do container como 10% da altura da tela

    return Scaffold(
      appBar: AppBar(
        title: Text('Modo Escuro'),
        
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
          width: double.infinity,
          height: containerHeight,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.grey,
              width: 1,
            ),
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
                    color: Colors.grey[200], // Adicionando cor de fundo transparente
                    child: Text(
                      'Modo Escuro',
                      style: TextStyle(fontSize: 18), 
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
