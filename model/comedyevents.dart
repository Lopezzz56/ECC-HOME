//every event falls into some category
import 'package:flutter/material.dart';



class ComedyEvent {
  final String imagePath,
      title,
      description,
      time,
      location,
      duration,
      punchLine1,
      punchLine2;
//  final buttonKey = GlobalKey();
  final List categoryIds, galleryImages;

  ComedyEvent({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.time,
    required this.location,
    required this.duration,
    required this.punchLine1,
    required this.punchLine2,
    required this.categoryIds,
    required this.galleryImages,
    // required this.buttonKey
  });
}

// final fitoor = ComedyEvent(
//     imagePath: "assets/event_images/Fitoor.jpeg",
//     title: "Fitoor",
//     description: "",
//     time: "",
//     location: "Pleasant Park",
//     duration: "3h",
//     punchLine1: "Marathon!",
//     punchLine2: "The latest fad in foodology, get the inside scoup.",
//     galleryImages: [
//       "assets/event_images/mus1.jpeg",
//       "assets/event_images/mus2.jpeg",
//       "assets/event_images/mus3.jpeg",
//       "assets/event_images/mus4.jpeg",
//     ],
//     categoryIds: [
//       0,
//       1,2,3
//     ]
//     // buttonKey: ElevatedButton(
//     //   key: buttonKey,
//     //   onPressed: (){

//     //   },
//     // )
//     );

// final mathematika = ComedyEvent(
//     imagePath: "assets/event_images/maths.jpg",
//     title: "Mathematika",
//     description:
//         "Guest list fill up fast so be sure to apply before handto secure a spot.",
//     time: "",
//     location: "Woods",
//     duration: "2h",
//     punchLine1: "Kaun Banega Ganeet Gyani",
//     punchLine2: "",
//     categoryIds: [
//       0,
//       2
//     ],
//     galleryImages: [
//       "assets/event_images/maths.jpg",
//       // "assets/event_images/cooking_2.jpeg",
//       // "assets/event_images/cooking_3.jpeg"
//     ]);

final gauravk = ComedyEvent(
    imagePath: "assets/images/s3.jpg",
    title: "Gaurav Kapoor Live",
    description:
        "Come and enjoy the super relatable and super funny, Gaurav Kapoor in his live show. ",
    time: "3-4",
    location: "K.C College",
    duration: "1h",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [
      "assets/images/s3.jpg",
      "assets/images/s1.jpg",
      "assets/images/s2.jpg",
    ],
    categoryIds: [
      0,
      1,
      3
    ]);

final samayraina = ComedyEvent(
    imagePath: "assets/images/samayraina.avif",
    title: "Samay Raina Unfiltered",
    description: "",
    time: "3.45-4.45",
    location: "Sofia Auditorium",
    duration: "1hr 15m",
    punchLine1: "",
    punchLine2: "See an Unfiltered Version of your Favourite samay raina",
    galleryImages: [
      "assets/images/s2.jpg",
      "assets/images/samayraina.avif",
      "assets/images/s4.jpeg",
      // "flutter_application-master/assets/event_images/s1.jpeg",
    ],
    categoryIds: [
      0,
      2
    ]);

final rahuldua = ComedyEvent(
    imagePath: "assets/images/s5.jpeg",
    title: "Oh! Hello!  ",
    description: "By Rahul Dua",
    time: "7.30",
    location: "Bal Gandharva Rang Mandir",
    duration: "1hr 15m",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [
     "assets/images/s5.jpeg",
      "assets/images/s1.jpg",
      "assets/images/s2.jpg",
    ],
    categoryIds: [
      0,
      1
    ]);

final vipulgoyal = ComedyEvent(
    imagePath: "assets/images/s4.jpeg",
    title: "Vipul Goyal Unleashed",
    description:
        "Fun & Laughter",
    time: "3.45-4.45",
    location: "MMR",
    duration: "1hr",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [
      "assets/images/s4.jpeg",
      "assets/images/s1.jpg",
      "assets/images/s2.jpg",
    ],
    categoryIds: [
      0,
      3
    ]);

final comedyevents = [
  gauravk,
  samayraina,
  vipulgoyal,
  rahuldua,
  // folkdance,
  // concert,
];
