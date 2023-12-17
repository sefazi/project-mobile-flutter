// import 'package:flutter/material.dart';

// class coba extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _currentIndex = 0;

//   final List<Widget> _pages = [
//     // Masukkan widget halaman pertama di sini
//     // Contoh: FirstPage(),
//     ,

//     // Masukkan widget halaman kedua di sini
//     // Contoh: SecondPage(),
//     Text('Halaman 2'),

//     // Masukkan widget halaman ketiga di sini
//     // Contoh: ThirdPage(),
//     Text('Halaman 3'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Navigation Bar Example'),
//       ),
//       body: _pages[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (int index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Halan 1',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Halaman 2',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Halaman 3',
//           ),
//         ],
//       ),
//     );
//   }
// }
