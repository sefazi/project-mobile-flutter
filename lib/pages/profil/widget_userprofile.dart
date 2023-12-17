// import 'package:flutter/material.dart';
// import 'package:project_mobile_flutter/pages/profil/index.dart';

// class UserProfile extends StatelessWidget {
//   final User user;

//   UserProfile({required this.user});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Row(
//         children: [
//           // Container(
//           //   decoration: BoxDecoration(
//           //     shape: BoxShape.circle,
//           //     color: Colors.blue, // Warna latar belakang foto profil
//           //   ),
//           //   child: CircleAvatar(
//           //     radius: 50.0,
//           //     backgroundImage: AssetImage('assets/profile_picture.jpg'),
//           //   ),
//           // ),
//           SizedBox(width: 16.0),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 user.name,
//                 style: TextStyle(
//                   fontSize: 24.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 2.0),
//               Text(
//                 user.email,
//                 style: TextStyle(
//                   fontSize: 14.0,
//                   color: Colors.grey,
//                 ),
//               ),
//               SizedBox(height: 4.0),
//               Text(
//                 'Resep:',
//                 style: TextStyle(
//                   fontSize: 18.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 4.0),
//               Text(
//                 user.bio,
//                 style: TextStyle(
//                   fontSize: 16.0,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
