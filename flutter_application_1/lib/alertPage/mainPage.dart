import 'package:flutter/material.dart';
import 'package:flutter_application_1/alertPage/addPage.dart';
import 'package:flutter_application_1/alertPage/contact.dart';

void main() {
  runApp(MaterialApp(
    home: Chamada(),
  ));
}

class Chamada extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double buttonHeight = screenHeight * 0.10;
    final double spacingHeight = screenHeight * 0.05;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Chamada'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        height: screenHeight, // Ocupa a altura total da tela
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade300, Colors.blue.shade800],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: spacingHeight), // Espaçamento de 5% no topo
            CustomButton(
              icon: Icons.person,
              label: 'conhecidos',
              onPressed: () {
                                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContatoDetalhes()),
                  );
              },
              height: buttonHeight,
            ),
            SizedBox(height: spacingHeight),
            CustomButton(
              icon: Icons.security,
              label: 'Monitoramento',
              onPressed: () {
                // Ação do botão Monitoramento
                print('Botão Monitoramento pressionado');
              },
              height: buttonHeight,
            ),
            SizedBox(height: spacingHeight),
            CustomButton(
              icon: Icons.warning,
              label: 'Alertas',
              onPressed: () {
                // Ação do botão Alertas
                print('Botão Alertas pressionado');
              },
              height: buttonHeight,
            ),
            SizedBox(height: spacingHeight),
            CustomButton(
              icon: Icons.settings,
              label: 'adicionar contato',
              onPressed: () {
                                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdicionarContato()),
                  );
                },
              height: buttonHeight,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  final double height;

  CustomButton({
    required this.icon,
    required this.label,
    required this.onPressed,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon, color: Colors.blue), // Ícone azul
        label: Text(label),
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: Colors.blue.shade500,
          backgroundColor: Colors.white,
          minimumSize: Size(double.infinity, height), // Largura total e altura dinâmica
        ),
      ),
    );
  }
}
