import 'package:flutter/material.dart';

import 'ui/homepage/home_page.dart';



class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // scaffoldBackgroundColor: Color(0xFFFFFFFF),
        // primaryColor: Color(0xFF6454F0),
        
        // background: rgb(48,48,241);
        // background: linear-gradient(90deg, rgba(48,48,241,1) 0%, rgba(0,212,255,1) 50%, rgba(1,237,175,1) 100%);

      ),
      home: HomePage(),
    );
  }
}
