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
  name: "Mumbai",
  icon: Icons.location_city,
);

final meetUpCategory = Category(
  categoryId: 2,
  name: "Delhi",
  icon: Icons.location_city_rounded,
);

final golfCategory = Category(
  categoryId: 3,
  name: "Kolkata",
  icon: Icons.location_city_sharp,
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
