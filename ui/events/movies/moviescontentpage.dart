import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../model/movieevents.dart';
import '../Standup/event_details_background.dart';
import '../../../model/comedyevents.dart';
// import '../../../model/event.dart';
// import '../event_details_background.dart';
import 'moviedetailspage.dart';
import 'moviesbg.dart';


class MoviesEventDetailsPage extends StatelessWidget {
  final MoviesEvent moviesevent;

  const MoviesEventDetailsPage({Key? key, required this.moviesevent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider<MoviesEvent>.value(
        value: moviesevent,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            MoviesEventDetailsBackground(),
             MoviesEventDetailsContent( ),
          ],
        ),
      ),
    );
  }
}

