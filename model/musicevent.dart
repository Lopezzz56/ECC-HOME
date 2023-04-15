//every event falls into some category
import 'package:flutter/material.dart';


class MusicEvent {
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

  MusicEvent({
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

// final fitoor = MusicEvent(
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

final sonunigam = MusicEvent(
    imagePath: "assets/images/mu1.jpeg",
    title: "Sonu Nigam",
    description:
        "Sonu Nigam is performing live again in Mumbai on 9th Jun",
    time: "7.30",
    location: "Shanmukhanda hall",
    duration: "2h",
    punchLine1: "",
    punchLine2: "",
    categoryIds: [
      0,
      2
    ],
    galleryImages: [
      "assets/images/mu1.jpeg",
      // "assets/event_images/cooking_2.jpeg",
      // "assets/event_images/cooking_3.jpeg"
    ]);

// final malharmasterclass = MusicEvent(
//     imagePath: "assets/event_images/Masterclass.jpeg",
//     title: "MALHAR MASTERCLASS",
//     description:
//         "Malhar Bollywood Dance Masterclass with celebrity trainer Vivek Dadhich",
//     time: "3-4",
//     location: "Fell GymKhana",
//     duration: "4h",
//     punchLine1: "",
//     punchLine2: "2 ECC Points",
//     galleryImages: [
//       "assets/event_images/m2.jpeg",
//       "assets/event_images/m3.jpeg",
//       "assets/event_images/m4.jpeg",
//       "assets/event_images/m1.jpeg",
//     ],
//     categoryIds: [
//       0,
//       1,
//       3
//     ]);

final kumarsanu = MusicEvent(
    imagePath: "assets/images/mu2.jpeg",
    title: "Kumar Sanu Show",
    description: "Emerse Yourself with the iconic kumar sanu",
    time: "7pm",
    location: "NSA",
    duration: "1hr",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [
      "assets/images/mu2.jpeg",
      // "assets/images/s3.jpeg",
      // "assets/event_images/s4.jpeg",
      // "flutter_application-master/assets/event_images/s1.jpeg",
    ],
    categoryIds: [
      0,
      2
    ]);

final pancham = MusicEvent(
    imagePath: "assets/images/mu3.jpeg",
    title: "Dearest Pancham",
    description: "Dance ",
    time: "3.45-4.45",
    location: "Kumar AV",
    duration: "1hr",
    punchLine1: "",
    punchLine2: "Bollywood Retro",
    galleryImages: [
      "assets/images/mu3.jpeg",
    ],
    categoryIds: [
      0,
      1
    ]);

// final concert = MusicEvent(
//     imagePath: "assets/event_images/Concert.jpeg",
//     title: "Concert",
//     description:
//         "Discussion to understand buisness dynamics acrosv s Industries",
//     time: "3.45-4.45",
//     location: "MMR",
//     duration: "1hr",
//     punchLine1: "",
//     punchLine2: "2 ECC",
//     galleryImages: [
//       "assets/event_images/Concert.jpeg",
//       "assets/event_images/Music.jpeg",
//       // "assets/event_images/concert.jpeg",
//     ],
//     categoryIds: [
//       0,
//       3
//     ]);

final musicevents = [
  // fitoor,
  kumarsanu,
  // malharmasterclass,
  sonunigam,
  pancham,
//  concert,
];
