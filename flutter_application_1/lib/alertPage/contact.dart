import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class ContatoDetalhes extends StatelessWidget {
  final String nome = "João Silva";
  final String numero = "+55 11 98765-4321";
  final String fotoUrl = "https://via.placeholder.com/150"; // URL de exemplo para a foto

  @override
  Widget build(BuildContext context) {
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
        title: Text('Detalhes do Contato'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade300, Colors.blue.shade800],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(fotoUrl),
            ),
            SizedBox(height: 20.0),
            Text(
              nome,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Text(
              numero,
              style: TextStyle(fontSize: 18, color: Colors.white70),
            ),
            SizedBox(height: 30.0),
            ElevatedButton.icon(
              onPressed: () async {
                final Uri launchUri = Uri(
                  scheme: 'tel',
                  path: numero,
                );
                await launchUrl(launchUri);
              },
              icon: Icon(Icons.phone, color: Colors.blue),
              label: Text('Ligar', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade500,
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                textStyle: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
