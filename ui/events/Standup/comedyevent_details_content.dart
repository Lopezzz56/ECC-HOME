// import 'package:svayamhome/forms/folkdance.dart';
// import 'package:svayamhome/forms/concert.dart';
// import 'package:svayamhome/forms/malmaster.dart';
// import 'package:svayamhome/forms/maths.dart';
// import 'package:svayamhome/forms/socio.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../model/comedyevents.dart';
import '../../../model/guest.dart';
import '../../../styleguide.dart';

// import '../../forms/fitoorform.dart';

class ComedyEventDetailsContent extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final event = Provider.of<ComedyEvent>(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
            child: Text(
              event.title,
              style: eventWhiteTitleTextStyle,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.24),
            child: FittedBox(
              child: Row(
                children: <Widget>[
                  Text(
                    "-",
                    style: eventLocationTextStyle.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    event.location,
                    style: eventLocationTextStyle.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 16.0),
          //   child: Text(
          //     "GUESTS",
          //     style: guestTextStyle,
          //   ),
          // ),
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     children: <Widget>[
          //       for (final guest in guests)
          //         Padding(
          //           padding: const EdgeInsets.all(8),
          //           child: ClipOval(
          //             child: Image.asset(
          //               guest.imagePath,
          //               width: 90,
          //               height: 90,
          //               fit: BoxFit.cover,
          //             ),
          //           ),
          //         ),
          //     ],
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: event.punchLine1,
                  style: punchLine1TextStyle,
                ),
                TextSpan(
                  text: event.punchLine2,
                  style: punchLine2TextStyle,
                ),
              ]),
            ),
          ),
          if (event.description.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                event.description,
                style: eventLocationTextStyle,
              ),
            ),
          if (event.galleryImages.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 16, bottom: 16),
              child: Text(
                "GALLERY",
                style: guestTextStyle,
              ),
            ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                for (final galleryImagePath in event.galleryImages)
                  Container(
                    margin:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 32),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image.asset(
                        galleryImagePath,
                        width: 180,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
              ],
            ),
          ),
//           Container(
//             alignment: Alignment.center,
//             width: double.infinity,
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                   textStyle: TextStyle(fontSize: 24.0), // set text size here
//                   minimumSize: Size(200.0, 60.0),
//                   backgroundColor:  Color.fromARGB(255, 51, 63, 225),
//  // set button size here
//                   ),
//               onPressed: () {
//                 //  Navigator.push(
//                 //   context,
//                 //   MaterialPageRoute(builder: (context) =>  const CalendarApp(title: 'calender',)),
//                 // );

//                 if (event.title == "Fitoor") {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) =>  FitoorApp(
//                                // title: 'fitoor',
//                               )));
//                 } else if (event.title == "Mathematika") {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const MathsApp(
//                               // title: 'calender',
//                               )));
//                 }
//                 else if (event.title == "MALHAR MASTERCLASS") {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const MalhaarApp(
//                               // title: 'calender',
//                               )));
//                 }
//                 else if (event.title == "The Social Hour") {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const SocioApp(
//                               // title: 'calender',
//                               )));
//                 }
//                 else if (event.title == "FolkDance") {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const FolkyApp(
//                               // title: 'calender',
//                               )));
//                 }
//                 else if (event.title == "Concert") {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const ConcertApp(
//                               // title: 'calender',
//                               )));
//                 }
//               },
//               child: const Text('Apply'),
//             ),
//           ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
