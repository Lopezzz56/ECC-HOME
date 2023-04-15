import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'event_details_background.dart';
import '../../../model/comedyevents.dart';
import '../../../model/musicevent.dart';
import 'event_details_background.dart';
import 'comedyevent_details_content.dart';

class ComedyEventDetailsPage extends StatelessWidget {
  final ComedyEvent comedyevent;

  const ComedyEventDetailsPage({Key? key, required this.comedyevent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider<ComedyEvent>.value(
        value: comedyevent,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            EventDetailsBackground(),
             ComedyEventDetailsContent( ),
          ],
        ),
      ),
    );
  }
}
