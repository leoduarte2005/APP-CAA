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
        title: Text('Configurações de Modo Escuro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: double.infinity,
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
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Modo Escuro',
                  style: TextStyle(fontSize: 18),
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
