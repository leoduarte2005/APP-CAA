import 'package:flutter/material.dart';
import 'package:flutter_application_1/settings/darkmodeSettings.dart';
import 'package:flutter_application_1/settings/fontSettings.dart';
import 'package:flutter_application_1/settings/languegeSettings.dart';
import 'package:flutter_application_1/settings/notSettings.dart';
import 'package:flutter_application_1/settings/secSettings.dart';

class Config extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Config'),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
            ),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Segurança',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            CustomButton(
              icon: Icons.person,
              label: 'Supervisão',
              onPressed: () {},
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CustomButton(
              icon: Icons.lock,
              label: 'Senhas e Segurança',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecConfig()),
                );
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Text(
              'Preferências',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            CustomButton(
              icon: Icons.notifications,
              label: 'Notificações',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotificationSettings()),
                );
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CustomButton(
              icon: Icons.info,
              label: 'Idioma e região',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LanguageRegionSettings()),
                );
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CustomButton(
              icon: Icons.brightness_3,
              label: 'Modo Escuro',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DarkModeSettings()),
                );
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CustomButton(
              icon: Icons.text_format,
              label: 'Tamanho da fonte',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FontSettings()),
                );
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Text(
              'Suas informações',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            CustomButton(
              icon: Icons.info_outline,
              label: 'Acessar suas informações',
              onPressed: () {
                // Adicione aqui o código para a ação do botão
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CustomButton(
              icon: Icons.cloud_download,
              label: 'Baixar suas informações',
              onPressed: () {
                // Adicione aqui o código para a ação do botão
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CustomButton(
              icon: Icons.swap_horiz,
              label: 'Transferir cópia das suas informações',
              onPressed: () {
                // Adicione aqui o código para a ação do botão
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Text(
              'Políticas legais',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            CustomButton(
              icon: Icons.description,
              label: 'Termos de serviço',
              onPressed: () {
                // Adicione aqui o código para a ação do botão
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CustomButton(
              icon: Icons.assignment,
              label: 'Termos de uso',
              onPressed: () {
                // Adicione aqui o código para a ação do botão
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Text(
              'Ajuda',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CustomButton(
              icon: Icons.help_outline,
              label: 'Central de ajuda',
              onPressed: () {
                // Adicione aqui o código para a ação do botão
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CustomButton(
              icon: Icons.help,
              label: 'Explicação dos botões',
              onPressed: () {
                // Adicione aqui o código para a ação do botão
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            CustomButton(
              icon: Icons.exit_to_app,
              label: 'Sair',
              onPressed: () {
                // Adicione aqui o código para sair
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CustomButton(
              icon: Icons.delete,
              label: 'Apagar conta',
              onPressed: () {
                // Adicione aqui o código para apagar a conta
              },
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

  const CustomButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffeae4e4),
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.125,
          alignment: Alignment.center,
          child: Row(
            // Layout horizontal para ícone e texto
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Icon(
                icon,
                color: Colors.black,
              ), // Ícone
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Text(
                label,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}