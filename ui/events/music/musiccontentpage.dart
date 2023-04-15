import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../model/movieevents.dart';
import '../../../model/musicevent.dart';
import '../Standup/event_details_background.dart';
import '../../../model/comedyevents.dart';
// import '../../../model/event.dart';
// import '../event_details_background.dart';
import 'musicbg.dart';
import 'musicdetailspage.dart';


class MusicEventDetailsPage extends StatelessWidget {
  final MusicEvent musicevent;

  const MusicEventDetailsPage({Key? key, required this.musicevent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider<MusicEvent>.value(
        value: musicevent,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            MusicEventDetailsBackground(),
             MusicEventDetailsContent( ),
          ],
        ),
      ),
    );
  }
}

