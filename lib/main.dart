import 'package:project_mobile_flutter/pages/Login/index.dart';
import 'package:project_mobile_flutter/pages/beranda/index.dart';
import 'package:project_mobile_flutter/pages/Login/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:project_mobile_flutter/pages/beranda/index.dart';
import 'package:project_mobile_flutter/pages/profil/index.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profile(),
  ));
}

Future<void> newMethod() =>
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
