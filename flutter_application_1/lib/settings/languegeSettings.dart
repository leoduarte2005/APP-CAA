import 'package:flutter/material.dart';
import 'package:flutter_application_1/settings/classSettings.dart';

class LanguageRegionSettings extends StatefulWidget {
  @override
  _LanguageRegionSettingsState createState() => _LanguageRegionSettingsState();
}

class _LanguageRegionSettingsState extends State<LanguageRegionSettings> {
  String _selectedLanguage = 'Português';
  String _selectedRegion = 'Brasil';

  List<String> _languages = ['Português', 'Inglês', 'Espanhol'];
  List<String> _regions = ['Brasil', 'Estados Unidos', 'Espanha'];

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    double containerHeight = MediaQuery.of(context).size.height * 0.1; // Definindo a altura dos containers como 10% da altura da tela

    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações de Idioma e Região'),
      ),
      body: Padding(
        padding: EdgeInsets.all(SizeConfig.getPercentageWidth(4)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Container(
                height: containerHeight,
                padding: EdgeInsets.all(SizeConfig.getPercentageWidth(2)),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(SizeConfig.getPercentageWidth(5)),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Idioma:',
                      style: TextStyle(
                        fontSize: SizeConfig.getPercentageFontSize(4),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    DropdownButton<String>(
                      value: _selectedLanguage,
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedLanguage = newValue!;
                        });
                      },
                      items: _languages
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            SizedBox(
              width: double.infinity,
              child: Container(
                height: containerHeight,
                padding: EdgeInsets.all(SizeConfig.getPercentageWidth(2)),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(SizeConfig.getPercentageWidth(5)),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Região:',
                      style: TextStyle(
                        fontSize: SizeConfig.getPercentageFontSize(4),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    DropdownButton<String>(
                      value: _selectedRegion,
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedRegion = newValue!;
                        });
                      },
                      items: _regions
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
