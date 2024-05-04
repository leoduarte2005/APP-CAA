import 'package:flutter/material.dart';
import 'package:flutter_application_1/settings/classSettings.dart';

class SecConfig extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          children: [
            Text(
              'Segurança',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: SizeConfig.getPercentageHeight(2)), 
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200], // Definindo a cor do container
                borderRadius: BorderRadius.circular(10),
              ),
              child: CustomButton(
                icon: Icons.person,
                label: 'Alterar senha',
                onPressed: () {
                  // Adicione aqui o código para a ação do botão
                },
              ),
            ),
            SizedBox(height: SizeConfig.getPercentageHeight(2)), 
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200], // Definindo a cor do container
                borderRadius: BorderRadius.circular(10),
              ),
              child: CustomButton(
                icon: Icons.lock,
                label: 'Autentificação de dois fatores',
                onPressed: () {
                  // Adicione aqui o código para a ação do botão
                },
              ),
            ),
            SizedBox(height: SizeConfig.getPercentageHeight(2)), 
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200], // Definindo a cor do container
                borderRadius: BorderRadius.circular(10),
              ),
              child: CustomButton(
                icon: Icons.lock,
                label: 'Login Salvo',
                onPressed: () {
                  // Adicione aqui o código para a ação do botão
                },
              ),
            ),
            SizedBox(height: SizeConfig.getPercentageHeight(2)), 
          ],
        ),
      ),
    );
  }
}
