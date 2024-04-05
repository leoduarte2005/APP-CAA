import 'package:flutter/material.dart';

class Registro extends StatelessWidget {
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
            body: Stack(children: <Widget>[
              Align(
                alignment: Alignment(0, -0.80),
                child: Text(
                  'Criar conta',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.10,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment(0, -0.50), // Alinhe ao centro
                child: SizedBox(
                  height: MediaQuery.of(context).size.height *
                      0.08, // Altura ajustada
                  width: MediaQuery.of(context).size.width *
                      0.8, // Largura ajustad
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color(0xff70e2fe),
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
                alignment: Alignment(0, -0.25), // Alinhe ao centro
                child: SizedBox(
                  height: MediaQuery.of(context).size.height *
                      0.08, // Altura ajustada
                  width: MediaQuery.of(context).size.width *
                      0.8, // Largura ajustad
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color(0xff70e2fe),
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
              SizedBox(height: 10),
              Align(
                alignment: Alignment(0, -0.0), // Alinhe ao centro
                child: SizedBox(
                  height: MediaQuery.of(context).size.height *
                      0.08, // Altura ajustada
                  width: MediaQuery.of(context).size.width *
                      0.8, // Largura ajustad
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color(0xff70e2fe),
                        width: 2.0,
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'repita a senha',
                        border: InputBorder
                            .none, //por o codigo do que fazer com o dado
                      ),
                    ),
                  ),
                ),
              ),
            ])));
  }
}
