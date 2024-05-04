import 'package:flutter/material.dart';
import 'package:flutter_application_1/register.dart';


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
              alignment: Alignment(0, -0.80),
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.10,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment(0, -0.35), // Alinhe ao centro
              child: SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.08, // Altura ajustada
                width:
                    MediaQuery.of(context).size.width * 0.8, // Largura ajustad
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xff6ecbe1),
                      width: 2.0,
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'e-mail',
                      border: InputBorder
                          .none, //por o codigo do que fazer com o dado
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment(0, -0.05), // Alinhe ao centro
              child: SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.08, // Altura ajustada
                width:
                    MediaQuery.of(context).size.width * 0.8, // Largura ajustad
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xff6ecbe1),
                      width: 2.0,
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'senha',
                      border: InputBorder
                          .none, //por o codigo do que fazer com o dado
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 0.15),
              child: TextButton(
                onPressed: () {
                  // Coloque aqui o código para lidar com o clique no botão "esqueceu a senha"
                },
                child: Text(
                  'Esqueceu a senha',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 0.25),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Registro()));
                },
                child: Text(
                  'não possui conta?',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 0.70),
              child: TextButton(
                onPressed: null,
                child: Text(
                  'continuar',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3a3b3b),
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff6ecbe1),
                  padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height *
                        0.02, // 2% da altura da tela
                    horizontal: MediaQuery.of(context).size.width *
                        0.1, // 10% da largura da tela
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.height *
                          0.02, // 2% da altura da tela
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
