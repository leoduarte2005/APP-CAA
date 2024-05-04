import 'package:flutter/material.dart';

class FontSettings extends StatefulWidget {
  @override
  _FontSettingsState createState() => _FontSettingsState();
}

class _FontSettingsState extends State<FontSettings> {
  double _fontSize = 20.0; // Tamanho da fonte inicial
  List<double> _fontSizes = [
    10,
    20,
    30,
    40,
    50
  ]; // Lista de tamanhos de fonte disponíveis

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajuste de Tamanho da Fonte'),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.grey,
              width: 1,
            ),
          ),
          child: Row(
            children: <Widget>[
              Text(
                'Tamanho da Fonte: ',
                style: TextStyle(fontSize: _fontSize),
              ),
              SizedBox(width: 20),
              DropdownButton<double>(
                value: _fontSize,
                items: _fontSizes.map((double value) {
                  return DropdownMenuItem<double>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
                onChanged: (double? newValue) {
                  if (newValue != null) {
                    setState(() {
                      _fontSize = newValue;
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
