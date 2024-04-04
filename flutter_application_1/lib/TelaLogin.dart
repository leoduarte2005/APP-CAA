import 'package:flutter/material.dart';

class TelaLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tela de Login'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment(0, -0.70),
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.10,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, -0.20),
              child: Text(
                'e-mail',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            TextField(),
            Align(
              alignment: Alignment(0, 0.0),
              child: Text(
                'senha',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            TextField(),
            Align(
              alignment: Alignment(0, 0.20),
              child: Text(
                'esqueceu a senha',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text('continuar'))
          ],
        ),
      ),
    );
  }
}
