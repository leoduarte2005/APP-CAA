import 'package:flutter/material.dart';

class Config extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SettingsScreen(),
    );
  }
}

class SettingsScreen extends StatelessWidget {
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Config'),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Adicione aqui a lógica para abrir a barra de pesquisa
                print('Abrir barra de pesquisa');
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Adicione aqui o código para a ação do botão
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height *
                    0.15, // 20% da altura da tela
                alignment: Alignment.center,
                child: Row(
                  // Layout horizontal para ícone e texto
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Icon(Icons.add), // Ícone
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ), // Espaçamento entre ícone e texto
                    Text(
                      'Botão 1',
                      style: TextStyle(color: Colors.black),
                    ), // Texto
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            ElevatedButton(
              onPressed: () {
                // Adicione aqui o código para a ação do botão
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height *
                    0.15, // 20% da altura da tela
                alignment: Alignment.center,
                child: Row(
                  // Layout horizontal para ícone e texto
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Icon(Icons.add), // Ícone
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ), // Espaçamento entre ícone e texto
                    Text(
                      'Botão 2',
                      style: TextStyle(color: Colors.black),
                    ), // Texto
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            ElevatedButton(
              onPressed: () {
                // Adicione aqui o código para a ação do botão
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height *
                    0.15, // 20% da altura da tela
                alignment: Alignment.center,
                child: Row(
                  // Layout horizontal para ícone e texto
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Icon(Icons.add), // Ícone
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ), // Espaçamento entre ícone e texto
                    Text(
                      'Botão 3',
                      style: TextStyle(color: Colors.black),
                    ), // Texto
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            ElevatedButton(
              onPressed: () {
                // Adicione aqui o código para a ação do botão
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height *
                    0.15, // 20% da altura da tela
                alignment: Alignment.center,
                child: Row(
                  // Layout horizontal para ícone e texto
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Icon(Icons.add), // Ícone
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ), // Espaçamento entre ícone e texto
                    Text(
                      'Botão 4',
                      style: TextStyle(color: Colors.black),
                    ), // Texto
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            ElevatedButton(
              onPressed: () {
                // Adicione aqui o código para a ação do botão
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height *
                    0.15, // 20% da altura da tela
                alignment: Alignment.center,
                child: Row(
                  // Layout horizontal para ícone e texto
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Icon(Icons.add), // Ícone
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ), // Espaçamento entre ícone e texto
                    Text(
                      'Botão 5',
                      style: TextStyle(color: Colors.black),
                    ), // Texto
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            ElevatedButton(
              onPressed: () {
                // Adicione aqui o código para a ação do botão
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height *
                    0.15, // 20% da altura da tela
                alignment: Alignment.center,
                child: Row(
                  // Layout horizontal para ícone e texto
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Icon(Icons.add), // Ícone
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ), // Espaçamento entre ícone e texto
                    Text(
                      'Botão 6',
                      style: TextStyle(color: Colors.black),
                    ), // Texto
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            ElevatedButton(
              onPressed: () {
                // Adicione aqui o código para a ação do botão
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height *
                    0.15, // 20% da altura da tela
                alignment: Alignment.center,
                child: Row(
                  // Layout horizontal para ícone e texto
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Icon(Icons.add), // Ícone
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ), // Espaçamento entre ícone e texto
                    Text(
                      'Botão 7',
                      style: TextStyle(color: Colors.black),
                    ), // Texto
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            ElevatedButton(
              onPressed: () {
                // Adicione aqui o código para a ação do botão
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height *
                    0.15, // 20% da altura da tela
                alignment: Alignment.center,
                child: Row(
                  // Layout horizontal para ícone e texto
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Icon(Icons.add), // Ícone
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ), // Espaçamento entre ícone e texto
                    Text(
                      'Botão 8',
                      style: TextStyle(color: Colors.black),
                    ), // Texto
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            ElevatedButton(
              onPressed: () {
                // Adicione aqui o código para a ação do botão
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height *
                    0.15, // 20% da altura da tela
                alignment: Alignment.center,
                child: Row(
                  // Layout horizontal para ícone e texto
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Icon(Icons.add), // Ícone
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ), // Espaçamento entre ícone e texto
                    Text(
                      'Botão 9',
                      style: TextStyle(color: Colors.black),
                    ), // Texto
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            ElevatedButton(
              onPressed: () {
                // Adicione aqui o código para a ação do botão
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height *
                    0.15, // 20% da altura da tela
                alignment: Alignment.center,
                child: Row(
                  // Layout horizontal para ícone e texto
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Icon(Icons.add), // Ícone
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ), // Espaçamento entre ícone e texto
                    Text(
                      'Botão 10',
                      style: TextStyle(color: Colors.black),
                    ), // Texto
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
