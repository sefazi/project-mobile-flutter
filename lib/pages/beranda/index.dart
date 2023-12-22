import 'package:flutter/material.dart';
import 'package:project_mobile_flutter/main.dart';
import 'package:project_mobile_flutter/pages/Login/index.dart';
import 'package:project_mobile_flutter/pages/home/index.dart';
import 'package:project_mobile_flutter/pages/profil/index.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentUser == null
          ? Login()
          : currentIndex == 0
              ? Home()
              : Profile(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
