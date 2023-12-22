import 'package:flutter/material.dart';
import 'package:project_mobile_flutter/connection/service/login_service.dart';
import 'package:project_mobile_flutter/main.dart';
import 'package:project_mobile_flutter/model/global_model.dart';
import 'package:project_mobile_flutter/pages/beranda/index.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Login',
          ),
          backgroundColor: Colors.amber,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Text("Login",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
                Center(
                  child: Form(
                      key: _formKey,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(labelText: "Email"),
                              controller: _email,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Isi Email";
                                }
                                return null;
                              },
                            ),
                            TextFormField(
                              decoration:
                                  InputDecoration(labelText: "Password"),
                              obscureText: true,
                              controller: _password,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Masukkan Password";
                                }
                                return null;
                              },
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                  onPressed: () async {
                                    if (_formKey.currentState!.validate()) {
                                      String email = _email.text;
                                      String password = _password.text;
                                      await LoginService()
                                          .checkUser(email, password)
                                          .then((value) {
                                        if (value.success!) {
                                          currentUser = Globals(
                                              id: value.data!.id!,
                                              email: value.data!.email!,
                                              username: value.data!.username!);
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomePage()));
                                        } else {
                                          AlertDialog alertDialog = AlertDialog(
                                            content: const Text(
                                                "User dan Password Salah"),
                                            actions: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Text("Ok"),
                                                style: ElevatedButton.styleFrom(
                                                    // primary: Colors.green
                                                    ),
                                              )
                                            ],
                                          );
                                          showDialog(
                                              context: context,
                                              builder: (context) =>
                                                  alertDialog);
                                        }
                                      });
                                    }
                                  },
                                  child: const Text("Login")),
                            )
                          ],
                        ),
                      )),
                )
              ],
            ),
          )),
        ));
  }
}
