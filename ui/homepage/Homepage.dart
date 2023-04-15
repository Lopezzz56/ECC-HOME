

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:svayamhome/ui/events/Standup/comedypage.dart';
import 'package:svayamhome/ui/events/movies/moviespage.dart';
import 'package:svayamhome/ui/events/music/musicpage.dart';
import 'package:svayamhome/ui/homepage/category_widget.dart';

import '../../app_state.dart';
import '../../model/category.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black87,
          ),
          onPressed: () {},
        ),
      ),
      body: ChangeNotifierProvider<AppState>(
        create: (_) => AppState(),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(30))),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                     
                      Text(
                        'Events',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //----------------------SEARCH--------------------
                      // Container(
                      //   padding: EdgeInsets.all(5),
                      //   decoration: BoxDecoration(
                      //       color: Color.fromRGBO(244, 243, 243, 1),
                      //       borderRadius: BorderRadius.circular(15)),
                      //   child: TextField(
                      //     decoration: InputDecoration(
                      //         border: InputBorder.none,
                      //         prefixIcon: Icon(
                      //           Icons.search,
                      //           color: Colors.black87,
                      //         ),
                      //         hintText: "Search you're looking for",
                      //         hintStyle:
                      //             TextStyle(color: Colors.grey, fontSize: 15)),
                      //   ),
                      // ),
                        //-----------------Category------------------
                      //   Padding(
                      //   padding: const EdgeInsets.symmetric(vertical: 24.0),
                      //   child: Consumer<AppState>(
                      //     builder: (context, appState, _) =>
                      //         SingleChildScrollView(
                      //       scrollDirection: Axis.horizontal,
                      //       child: Row(
                      //         children: <Widget>[
                      //           for (final category in categories)
                      //             CategoryWidget(category: category)
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      //-----------------Category------------------
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Upcoming',
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            promoCard('assets/images/samayraina.avif'),
                            promoCard('assets/images/bhuj.jpeg'),
                            promoCard('assets/images/s1.jpg'),
                            promoCard('assets/images/s2.jpeg'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/comedy.jpeg')),
                        ),
                        child: GestureDetector(
                            onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ComedyPage()));
                                },
                              
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomRight,
                                  stops: [
                                    0.3,
                                    0.9
                                  ],
                                  colors: [
                                    Colors.black.withOpacity(.8),
                                    Colors.black.withOpacity(.2)
                                  ]),
                            ),
                            // child: Align(
                            //   alignment: Alignment.bottomLeft,
                            //   child: Padding(
                            //     padding: const EdgeInsets.all(15.0),
                            //     child: Text(
                            //       'Best Design',
                            //       style:
                            //           TextStyle(color: Colors.white, fontSize: 20),
                            //     ),
                            //   ),
                            // ),
                          ),
                        ),
                      ),
                          SizedBox(
                        height: 20,
                      ),
                        Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/music.jpeg')),
                        ),
                        child: GestureDetector(
                            onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MusicPage()));
                                },
                              
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomRight,
                                  stops: [
                                    0.3,
                                    0.9
                                  ],
                                  colors: [
                                    Colors.black.withOpacity(.8),
                                    Colors.black.withOpacity(.2)
                                  ]),
                            ),
                            // child: Align(
                            //   alignment: Alignment.bottomLeft,
                            //   child: Padding(
                            //     padding: const EdgeInsets.all(15.0),
                            //     child: Text(
                            //       'Best Design',
                            //       style:
                            //           TextStyle(color: Colors.white, fontSize: 20),
                            //     ),
                            //   ),
                            // ),
                          ),
                        ),
                      ),  
                        SizedBox(
                        height: 20,
                      ),
                        Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/movies.jpeg')),
                        ),
                        child: GestureDetector(
                            onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MoviesPage()));
                                },
                              
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomRight,
                                  stops: [
                                    0.3,
                                    0.9
                                  ],
                                  colors: [
                                    Colors.black.withOpacity(.8),
                                    Colors.black.withOpacity(.2)
                                  ]),
                            ),
                            // child: Align(
                            //   alignment: Alignment.bottomLeft,
                            //   child: Padding(
                            //     padding: const EdgeInsets.all(15.0),
                            //     child: Text(
                            //       'Best Design',
                            //       style:
                            //           TextStyle(color: Colors.white, fontSize: 20),
                            //     ),
                            //   ),
                            // ),
                          ),
                        ),
                      ),
                          SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget promoCard(image) {
    return AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                0.1,
                0.9
              ], colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1)
              ])),
        ),
      ),
    );
  }
}