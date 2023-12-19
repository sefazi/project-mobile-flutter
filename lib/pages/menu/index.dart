// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Menu App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MenuScreen(),
//     );
//   }
// }

// class MenuScreen extends StatelessWidget {
//   final List<String> menuItems = [
//     'Menu Item 1',
//     'Menu Item 2',
//     'Menu Item 3',
//     'Menu Item 4',
//     'Menu Item 5',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Menu Screen'),
//       ),
//       body: ListView.builder(
//         itemCount: menuItems.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(menuItems[index]),
//             onTap: () {
//               // Handle item click
//               // Tambahkan logika atau navigasi sesuai kebutuhan
//               print('Menu item clicked: ${menuItems[index]}');
//             },
//           );
//         },
//       ),
//     );
//   }
// }
