//every event falls into some category
import 'package:flutter/material.dart';


class MoviesEvent {
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

  MoviesEvent({
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

final popeexorcist = MoviesEvent(
    imagePath: "assets/images/m1.jpeg",
    title: "The Pope Exorcist",
    description: "Inspired by the actual files of Father Gabriele Amorth, Chief Exorcist of the Vatican ",
    time: "2pm",
    location: "Metro Inox",
    duration: "1hr 45min",
    punchLine1: "",
    punchLine2: "Available in all Languages ",
    galleryImages: [
      "assets/images/m1.jpeg",
      // "assets/images/m2.jpeg",
      // "assets/images/m3.jpeg",
      // "assets/images/m4.jpeg",
    ],
    categoryIds: [
      0,
      1,2,3
    ]
    // buttonKey: ElevatedButton(
    //   key: buttonKey,
    //   onPressed: (){

    //   },
    // )
    );

final shakuntalam = MoviesEvent(
    imagePath: "assets/images/m2.jpeg",
    title: "Shakuntalam",
    description:
        "An abandoned girl was found by Sage Kanva in the forest. He names her Shakuntala and raises her as his own",
    time: "",
    location: "Metro Inox",
    duration: "2h",
    punchLine1: "",
    punchLine2: "Available in Hindi",
    categoryIds: [
      0,
      2
    ],
    galleryImages: [
      "assets/images/m2.jpeg",
      // "assets/event_images/cooking_2.jpeg",
      // "assets/event_images/cooking_3.jpeg"
    ]);

final fastx = MoviesEvent(
    imagePath: "assets/images/m5.jpeg",
    title: "FastX",
    description:
        "Dom Toretto and his family must confront a terrifying new enemy who`s fueled by revenge.",
    time: "4",
    location: "Sterling Cineplex",
    duration: "2h 14m",
    punchLine1: "",
    punchLine2: "Available in all Languages",
    galleryImages: [
      "assets/images/m5.jpeg",
      // "assets/images/m3.jpeg",
      // "assets/images/m4.jpeg",
      // "assets/images/m1.jpeg",
    ],
    categoryIds: [
      0,
      1,
      3
    ]);

// final socialhour = MoviesEvent(
//     imagePath: "assets/event_images/Music.jpeg",
//     title: "The Social Hour",
//     description: "Discussion to understand buisness dynamics across Industries",
//     time: "3.45-4.45",
//     location: "MMR",
//     duration: "1hr",
//     punchLine1: "",
//     punchLine2: "2 ECC",
//     galleryImages: [
//       "assets/event_images/s2.jpeg",
//       "assets/event_images/s3.jpeg",
//       "assets/event_images/s4.jpeg",
//       "flutter_application-master/assets/event_images/s1.jpeg",
//     ],
//     categoryIds: [
//       0,
//       2
//     ]);

// final folkdance = MoviesEvent(
//     imagePath: "assets/event_images/folk1.jpeg",
//     title: "FolkDance",
//     description: "Dance ",
//     time: "3.45-4.45",
//     location: "MMR",
//     duration: "1hr",
//     punchLine1: "",
//     punchLine2: "2 ECC",
//     galleryImages: [
//       "assets/event_images/folk2.jpeg",
//     ],
//     categoryIds: [
//       0,
//       1
//     ]);

// final concert = MoviesEvent(
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

final moviesevents = [
fastx,
shakuntalam,
popeexorcist
];
