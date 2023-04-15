// import 'package:eccapp/ui/bottomnav.dart';
import 'package:flutter/material.dart';

import 'package:svayamhome/model/category.dart';
import 'package:svayamhome/model/musicevent.dart';

import 'package:svayamhome/styleguide.dart';
import 'package:svayamhome/ui/events/Standup/comedyevent_details_page.dart';
import 'package:provider/provider.dart';
// ignore: unused_import
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../../../../app_state.dart';
// import 'package:eccapp/pages/calender.dart';
// import 'package:eccapp/pages/profile.dart';
import '../../../../model/comedyevents.dart';
import '../../../model/movieevents.dart';
import '../../homepage/category_widget.dart';
import 'moviescontentpage.dart';
import 'movieswidget.dart';
// import 'category_widget.dart';
// import 'event_widget.dart';
// import 'home_page_background.dart';

class MoviesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<AppState>(
        create: (_) => AppState(),
        child: Stack(
          children: <Widget>[
            // HomePageBackground(
            //   screenHeight: MediaQuery.of(context).size.height,
            // ),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    //   child: Row(
                    //     children: <Widget>[
                    //       Text(
                    //         "LOCAL EVENTS",
                    //         style: fadedTextStyle,
                    //       ),

                    //     ],
                    //   ),
                    // ),
                      SizedBox(
                        height: 30,
                      ),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Text(
                        "MOVIES!!!!!!",
                        style: whiteHeadingTextStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24.0),
                      child: Consumer<AppState>(
                        builder: (context, appState, _) =>
                            SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              for (final category in categories)
                                CategoryWidget(category: category)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Consumer<AppState>(
                        builder: (context, appState, _) => Column(
                          children: <Widget>[
                            for (final moviesevent in moviesevents.where((e) => e
                                .categoryIds
                                .contains(appState.selectedCategoryId)))
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          MoviesEventDetailsPage(moviesevent: moviesevent),
                                    ),
                                  );
                                },
                                child: MoviesEventWidget(
                                  moviesevent: moviesevent,
                                ),
                              )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
     
    );
    
  }
}
