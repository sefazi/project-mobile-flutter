import 'package:project_mobile_flutter/pages/beranda/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

Future<void> newMethod() =>
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);