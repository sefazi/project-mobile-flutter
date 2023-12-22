import 'package:project_mobile_flutter/model/global_model.dart';
import 'package:project_mobile_flutter/pages/Login/index.dart';
import 'package:project_mobile_flutter/pages/beranda/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Globals? currentUser;

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ElevatedButton(
      onPressed: handleButtonPress,
      child: Text('Press Me'),
    ),
    // home: currentUser == null ? Login() : HomePage(),
  ));
  newMethod();
}

Future<void> newMethod() =>
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

void handleButtonPress() {
  // Do something when the button is pressed
  print('Button pressed!');
}
