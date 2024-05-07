import 'package:flutter/material.dart';

class NotificationSettings extends StatefulWidget {
  @override
  _NotificationSettingsState createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  bool _silentMode = false;
  bool _blockNotifications = false;
  double _volume = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        title: Text(
          'Configurações de Notificações',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade300,
              Colors.blue.shade800,
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
 decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
                Colors.blue,
                Colors.lightBlue,
                Color.fromARGB(255, 159, 241, 255),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 1,
        ),
      ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Modo Silencioso:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Switch(
                        value: _silentMode,
                        onChanged: (value) {
                          setState(() {
                            _silentMode = value;
                          });
                        },
                        activeColor: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
 decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
                Colors.blue,
                Colors.lightBlue,
                Color.fromARGB(255, 159, 241, 255),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 1,
        ),
      ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bloquear Notificações:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Switch(
                        value: _blockNotifications,
                        onChanged: (value) {
                          setState(() {
                            _blockNotifications = value;
                          });
                        },
                        activeColor: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
 decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
                Colors.blue,
                Colors.lightBlue,
                Color.fromARGB(255, 159, 241, 255),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 1,
        ),
      ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Volume:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Slider(
                        value: _volume,
                        min: 0,
                        max: 100,
                        onChanged: (value) {
                          setState(() {
                            _volume = value;
                          });
                        },
                        activeColor: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
