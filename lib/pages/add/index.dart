import 'package:flutter/material.dart';


class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();
  TextEditingController _controller4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Menambahkan Resep', style: Theme.of(context).textTheme.headline6),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller1,
              decoration: InputDecoration(labelText: 'Masukan Nama Penulis'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _controller2,
              decoration: InputDecoration(labelText: 'Masukan Judul Resep'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _controller3,
              decoration: InputDecoration(labelText: 'Masukan Bahan-Bahan'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _controller4,
              decoration: InputDecoration(labelText: 'Masukan Cara Pembuatan'),
            ),

            const SizedBox(
                    height: 20,
                  ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow,
              side: BorderSide.none,
              shape: const StadiumBorder()),
              child: const Text('Tambah',
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
              child: const Text('Hapus',
              style: TextStyle(color: Colors.white)),
              ),
            ),

        //     SizedBox(height: 32.0),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         ElevatedButton(
        //           onPressed: () {
        //           // Handle cancel button click
        //           print('Cancel Button Clicked');
        //         },
        //           style: ElevatedButton.styleFrom(
        //           primary: Colors.red, // Set the background color of the button to red
        //           ),
        //           child: Text('Cancel'),
        //         ),
        //         ElevatedButton(
        //         onPressed: () {
        //             // Access the entered text using the TextEditingController
        //             print('Masukan Nama Penulis: ${_controller1.text}');
        //             print('Masukan Judul Resep: ${_controller2.text}');
        //             print('Masukan Bahan-Bahan: ${_controller3.text}');
        //             print('Masukan Cara Pembuatan: ${_controller4.text}');
        //           },
        //           child: Text('Submit'),
        //         ),
        //   ],
        // ),  
          ],
        ),
      ),
    );
  }
}


