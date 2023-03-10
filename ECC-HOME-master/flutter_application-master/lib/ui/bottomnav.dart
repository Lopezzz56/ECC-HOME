import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../pages/calender.dart';
import '../pages/profile.dart';
import 'homepage/home_page.dart';

class Bottomnav extends StatefulWidget {
   const Bottomnav({Key? key}) : super(key: key);

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  
  
  int index = 0;
  final pages = [
    HomePage(),
    CalendarApp(title: 'Calendar'),
    AdminPage(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        backgroundColor: Color.fromARGB(255, 130, 213, 206),
        color: Color.fromARGB(255, 53, 114, 227),
        animationDuration: Duration(milliseconds: 300),

        items: <Widget>[
          
          Icon(
              Icons.home,
              color: Colors.white,
              size: 30,
            ),
          
          // Icon(
          //   Icons.search,
          //   color: Colors.white,
          //   size: 30,
          // ),
      
             Icon(
              Icons.calendar_month,
              color: Colors.white,
              size: 30,
            ),
          
          
             Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
          
        ],
        //     backgroundColor: Colors.blueAccent,
        // // ignore: prefer_const_literals_to_create_immutables
        // items: <Widget>[
        //   const CurvedNavigationBarItem(
        //     child: Icon(Icons.home_outlined),
        //     label: 'Home',
        //   ),
        //   CurvedNavigationBarItem(
        //     child: Icon(Icons.search),
        //     label: 'Search',
        //   ),
        //   CurvedNavigationBarItem(
        //     child: Icon(Icons.chat_bubble_outline),
        //     label: 'Chat',
        //   ),
        //   CurvedNavigationBarItem(
        //     child: Icon(Icons.newspaper),
        //     label: 'Feed',
        //   ),
        //   CurvedNavigationBarItem(
        //     child: Icon(Icons.perm_identity),
        //     label: 'Personal',
        //   ),
        // ],
        index: index,

        //

        // ontap() ----- method

       onTap: (index) => setState(() => this.index = index),

      ),
    );
  }
}
