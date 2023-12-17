// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:project_mobile_flutter/pages/Login/index.dart';
import 'package:project_mobile_flutter/pages/profil/widget_userprofile.dart';
import 'package:page_transition/page_transition.dart';
// import 'package:project_mobile_flutter/pages/profil/widget_userprofile.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('profile', style: Theme.of(context).textTheme.headline6),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: const Image(image: AssetImage('assets/e.png'))),
              ),
              const SizedBox(height: 10),
              Text(
                'Nama',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                'email@email.com',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      side: BorderSide.none,
                      shape: const StadiumBorder()),
                  child: const Text('Edit Profile',
                      style: TextStyle(color: Colors.black)),
                ),
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),

              ///menu
              ProfileMenuWidget(title: 'Informasi Akun', onPress: () {}),
              ProfileMenuWidget(title: 'Tambah Resep', onPress: () {}),
              ProfileMenuWidget(title: 'Edit Resep', onPress: () {}),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(height: 10),
              ProfileMenuWidget(
                  title: 'Logout',
                  textColor: Colors.red,
                  endICon: false,
                  onPress: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade, child: Login()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
