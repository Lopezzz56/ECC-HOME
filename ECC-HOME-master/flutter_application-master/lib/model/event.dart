//every event falls into some category
import 'package:flutter/material.dart';

import '../pages/calender.dart';

class Event {
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

  Event({
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

final fitoor = Event(
    imagePath: "assets/event_images/Fitoor.jpeg",
    title: "Fitoor",
    description: "",
    time: "",
    location: "Pleasant Park",
    duration: "3h",
    punchLine1: "Marathon!",
    punchLine2: "The latest fad in foodology, get the inside scoup.",
    galleryImages: [
      "assets/event_images/mus1.jpeg",
      "assets/event_images/mus2.jpeg",
      "assets/event_images/mus3.jpeg",
      "assets/event_images/mus4.jpeg",
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

final mathematika = Event(
    imagePath: "assets/event_images/maths.jpg",
    title: "Mathematika",
    description:
        "Guest list fill up fast so be sure to apply before handto secure a spot.",
    time: "",
    location: "Woods",
    duration: "2h",
    punchLine1: "Kaun Banega Ganeet Gyani",
    punchLine2: "",
    categoryIds: [
      0,
      2
    ],
    galleryImages: [
      "assets/event_images/maths.jpg",
      // "assets/event_images/cooking_2.jpeg",
      // "assets/event_images/cooking_3.jpeg"
    ]);

final malharmasterclass = Event(
    imagePath: "assets/event_images/Masterclass.jpeg",
    title: "MALHAR MASTERCLASS",
    description:
        "Malhar Bollywood Dance Masterclass with celebrity trainer Vivek Dadhich",
    time: "3-4",
    location: "Fell GymKhana",
    duration: "4h",
    punchLine1: "",
    punchLine2: "2 ECC Points",
    galleryImages: [
      "assets/event_images/m2.jpeg",
      "assets/event_images/m3.jpeg",
      "assets/event_images/m4.jpeg",
      "assets/event_images/m1.jpeg",
    ],
    categoryIds: [
      0,
      1,
      3
    ]);

final socialhour = Event(
    imagePath: "assets/event_images/Music.jpeg",
    title: "The Social Hour",
    description: "Discussion to understand buisness dynamics across Industries",
    time: "3.45-4.45",
    location: "MMR",
    duration: "1hr",
    punchLine1: "",
    punchLine2: "2 ECC",
    galleryImages: [
      "assets/event_images/s2.jpeg",
      "assets/event_images/s3.jpeg",
      "assets/event_images/s4.jpeg",
      "flutter_application-master/assets/event_images/s1.jpeg",
    ],
    categoryIds: [
      0,
      2
    ]);

final folkdance = Event(
    imagePath: "assets/event_images/folk1.jpeg",
    title: "FolkDance",
    description: "Dance ",
    time: "3.45-4.45",
    location: "MMR",
    duration: "1hr",
    punchLine1: "",
    punchLine2: "2 ECC",
    galleryImages: [
      "assets/event_images/folk2.jpeg",
    ],
    categoryIds: [
      0,
      1
    ]);

final concert = Event(
    imagePath: "assets/event_images/Concert.jpeg",
    title: "Concert",
    description:
        "Discussion to understand buisness dynamics acrosv s Industries",
    time: "3.45-4.45",
    location: "MMR",
    duration: "1hr",
    punchLine1: "",
    punchLine2: "2 ECC",
    galleryImages: [
      "assets/event_images/Concert.jpeg",
      "assets/event_images/Music.jpeg",
      // "assets/event_images/concert.jpeg",
    ],
    categoryIds: [
      0,
      3
    ]);

final events = [
  fitoor,
  mathematika,
  malharmasterclass,
  socialhour,
  folkdance,
  concert,
];
