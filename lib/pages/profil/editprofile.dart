import 'package:flutter/material.dart';
// import 'package:page_transition/page_transition.dart';

class Update extends StatelessWidget {
  const Update({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Edit Profile', style: Theme.of(context).textTheme.headline6),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration:
                        const InputDecoration(label: Text('Nama Lengkap')),
                  ),
                  const SizedBox(
                    height: 40 - 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(label: Text('Email')),
                  ),
                  const SizedBox(
                    height: 40 - 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(label: Text('Password')),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          side: BorderSide.none,
                          shape: const StadiumBorder()),
                      child: const Text('Edit',
                          style: TextStyle(color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          side: BorderSide.none,
                          shape: const StadiumBorder()),
                      child: const Text('Delete',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
