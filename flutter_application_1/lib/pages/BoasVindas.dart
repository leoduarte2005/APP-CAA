import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/PageLogin.dart';
import 'package:flutter_application_1/pages/Registro.dart';
import 'package:flutter_application_1/pages/TelaLogin.dart';

class BoasVindas extends StatelessWidget {
  double calculateTopMargin(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.10 * 1.1;
  }

  @override
  Widget build(BuildContext context) {
    double topMargin = calculateTopMargin(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(child: Text('')),
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Color(0xff70e2fe),
            ),
            Positioned(
              left: 0,
              top: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: MediaQuery.of(context).size.height * 0.75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, -0.45),
              child: Text(
                'Boas-vindas!',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.10,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Align(
              alignment: Alignment(
                  0, -0.40 + topMargin / MediaQuery.of(context).size.height),
              child: Text(
                'texto de boas vindas',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width * 0.025,
              top: MediaQuery.of(context).size.height * 0.50,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageLogin()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.41,
                    vertical: MediaQuery.of(context).size.height * 0.030,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width * 0.025,
              top: MediaQuery.of(context).size.height * 0.60,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Registro()));
                },
                child: Text(
                  'Registre-se',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff00a41b),
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.346,
                    vertical: MediaQuery.of(context).size.height * 0.030,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width * 0.025,
              top: MediaQuery.of(context).size.height * 0.70,
              child: ButtonActivateIntent(
                button: () {
                  print('Botão de email pressionado');
                },
                child: Text(
                  'entre com email',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffff0b02),
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.285,
                    vertical: MediaQuery.of(context).size.height * 0.030,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonActivateIntent extends StatelessWidget {
  final VoidCallback button;
  final Widget child;
  final ButtonStyle? style;

  const ButtonActivateIntent({
    required this.button,
    required this.child,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: button,
      child: child,
      style: style,
    );
  }
}
