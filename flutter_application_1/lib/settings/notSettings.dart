import 'package:flutter/material.dart';
import 'package:flutter_application_1/settings/classSettings.dart';

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
    SizeConfig.init(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações de Notificações'),
      ),
      body: Padding(
        padding: EdgeInsets.all(SizeConfig.getPercentageWidth(4)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: SizeConfig.getPercentageHeight(10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(SizeConfig.getPercentageWidth(4)),
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
              child: Padding(
                padding: EdgeInsets.all(SizeConfig.getPercentageWidth(2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Modo Silencioso:',
                      style: TextStyle(
                        fontSize: SizeConfig.getPercentageFontSize(4),
                        fontWeight: FontWeight.bold,
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
            SizedBox(height: SizeConfig.getPercentageHeight(2)),
            Container(
              height: SizeConfig.getPercentageHeight(10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(SizeConfig.getPercentageWidth(4)),
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
              child: Padding(
                padding: EdgeInsets.all(SizeConfig.getPercentageWidth(2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Bloquear Notificações:',
                      style: TextStyle(
                        fontSize: SizeConfig.getPercentageFontSize(4),
                        fontWeight: FontWeight.bold,
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
            SizedBox(height: SizeConfig.getPercentageHeight(2)),
            Container(
              height: SizeConfig.getPercentageHeight(10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(SizeConfig.getPercentageWidth(4)),
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
              child: Padding(
                padding: EdgeInsets.all(SizeConfig.getPercentageWidth(2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Volume:',
                      style: TextStyle(
                        fontSize: SizeConfig.getPercentageFontSize(4),
                        fontWeight: FontWeight.bold,
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
    );
  }
}
