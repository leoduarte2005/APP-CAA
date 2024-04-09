import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //container de fundo
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height *
                0.005), // Ajuste conforme necessário
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.blue,
              Colors.lightBlue,
              Color.fromARGB(255, 159, 241, 255),
            ],
          ),
        ),
        //coluna principal
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //botão voltar
            Positioned(
              left: MediaQuery.of(context).size.width * 0.025,
              top: MediaQuery.of(context).size.height * 0.50,
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: MediaQuery.of(context).size.width *
                    0.1, // Ajuste conforme necessário
                onPressed: () {
                  Navigator.pop(
                      context); // Função para voltar para a página anterior
                },
              ),
            ),
            //Texto de login e bem vindo de vola
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width *
                  0.1), // Ajuste conforme necessário
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width *
                          0.15, // Ajuste conforme necessário
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height *
                        0.005, // Ajuste conforme necessário
                  ),
                  Text(
                    "Bem Vindo de volta",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width *
                          0.04, // Ajuste conforme necessário
                    ),
                  ),
                ],
              ),
            ),
            //container principal
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 252, 252, 252),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(MediaQuery.of(context).size.width *
                      0.1), // 10% da largura da tela
                  topRight: Radius.circular(MediaQuery.of(context).size.width *
                      0.1), // 10% da largura da tela
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height *
                          0.04, // Ajuste conforme necessário
                    ),
                    Container(
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width *
                              0.05), // Ajuste conforme necessário
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(27, 90, 225, 0.298),
                            blurRadius: MediaQuery.of(context).size.width *
                                0.05, // Ajuste conforme necessário
                            offset: Offset(
                                0,
                                MediaQuery.of(context).size.width *
                                    0.05), // Ajuste conforme necessário
                          )
                        ],
                      ),
                      //incerção de email/senha
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color:
                                      const Color.fromARGB(255, 202, 201, 201),
                                ),
                              ),
                            ),
                            child: TextField(
                              textAlign: TextAlign.justify,
                              decoration: InputDecoration(
                                hintText: "Email ou Número de Telefone",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: const Color.fromARGB(
                                            255, 202, 201, 201)))),
                            child: TextFormField(
                              textAlign: TextAlign
                                  .justify, // Alinha o texto à esquerda
                              decoration: InputDecoration(
                                hintText: "Senha",
                                icon: Icon(Icons.lock, color: Colors.white),
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                                suffixIcon: GestureDetector(
                                    child: Icon(
                                      _showPassword == false
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: Colors.grey,
                                    ),
                                    onTap: () {
                                      setState(() {
                                        _showPassword = !_showPassword;
                                      });
                                    }),
                              ),
                              obscureText:
                                  _showPassword == false ? true : false,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height *
                          0.03, // Ajuste conforme necessário
                    ),
                    //esqueceu a senha
                    TextButton(
                      onPressed: () {
                        // Coloque aqui o código para lidar com o clique no botão "Esqueceu a Senha?"
                      },
                      child: Text(
                        "Esqueceu a Senha?",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    //botão de login
                    InkWell(
                      onTap: () {
                        print('botão login pressionado');
                        // Coloque aqui o código para lidar com o clique no botão "Login"
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.5,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue,
                        ),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    //texto
                    Text(
                      "Continue com sua mídia social",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * 0.04),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    //botão do facebook/gmail
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Alinha os elementos do Row ao centro
                        children: [
                          InkWell(
                            onTap: () {
                              print('botão facebook clicado');
                              // Coloque aqui o código para lidar com o clique no botão "Facebook"
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.39,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    MediaQuery.of(context).size.height * 0.03),
                                color: Color.fromARGB(255, 7, 65, 255),
                              ),
                              child: Center(
                                child: Text(
                                  "Facebook",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width *
                                0.04, // Ajuste conforme necessário
                          ),
                          InkWell(
                            onTap: () {
                              print('botão gmail clicado');
                              // Coloque aqui o código para lidar com o clique no botão "Gmail"
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.39,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    MediaQuery.of(context).size.height * 0.03),
                                color: const Color.fromARGB(255, 168, 12, 12),
                              ),
                              child: Center(
                                child: Text(
                                  "Gmail",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
