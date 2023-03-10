// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// class MyCard extends StatelessWidget {
//   const MyCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Card(
//             color: Color.fromARGB(255, 220, 220, 220),
//             elevation: 0,
//             margin: const EdgeInsets.all(10),
//             child: ListTile(
//               leading: Icon(
//                 Icons.person,
//                 size: 30,
//                 color: Color.fromARGB(255, 0, 0, 0),
//               ),
//               title: Text(
//                 "My Profile",
//                 style: TextStyle(
//                   color: Color.fromARGB(255, 0, 0, 0),
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               trailing: Container(
//                 decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 0, 0, 0),
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: IconButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) {
//                           return MyProfile();
//                         },
//                       ),
//                     );
//                   },
//                   icon: Icon(
//                     Icons.arrow_forward,
//                     size: 25,
//                     color: Colors.amber,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//     ),
//   }
// }