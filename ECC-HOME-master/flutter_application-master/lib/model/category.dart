//events fall into categories
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  final int categoryId;
  final String name;
  final IconData icon;

  Category({required this.categoryId, required this.name, required this.icon});
}

final allCategory = Category(
  categoryId: 0,
  name: "All",
  icon: Icons.search,
);

final musicCategory = Category(
  categoryId: 1,
  name: "Dance",
  icon: Icons.favorite,
);

final meetUpCategory = Category(
  categoryId: 2,
  name: "Talk",
  icon: Icons.mic,
);

final golfCategory = Category(
  categoryId: 3,
  name: "Music",
  icon: Icons.music_note,
);

// final birthdayCategory = Category(
//   categoryId: 4,
//   name: "Birthday",
//   icon: Icons.cake,
// );

final categories = [
  allCategory,
  musicCategory,
  meetUpCategory,
  golfCategory,
  // birthdayCategory,
];
