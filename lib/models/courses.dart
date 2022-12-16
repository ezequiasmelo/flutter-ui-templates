import 'package:flutter/material.dart';

class Course {
  final int id;
  final String name;
  final String image;
  final int price;
  final IconData icon;
  final String lesson;
  final String time;

  Course({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.icon,
    required this.lesson,
    required this.time,
  });
}

List<Course> courses = [
  Course(
    id: 1,
    name: "Illustrator",
    image: "assets/images/BG_red.png",
    price: 60,
    icon: Icons.pentagon,
    lesson: "12",
    time: "28 hrs 40 mins",
  ),
  Course(
    id: 2,
    name: "Figma Prototyping",
    image: "assets/images/BG_blue.png",
    price: 45,
    icon: Icons.account_tree,
    lesson: "08",
    time: "20 hrs 15 mins",
  ),
  Course(
    id: 2,
    name: "Figma Prototyping",
    image: "assets/images/BG_blue.png",
    price: 50,
    icon: Icons.pentagon,
    lesson: "12",
    time: "28 hrs 40 mins",
  ),
  Course(
    id: 2,
    name: "Figma Prototyping",
    image: "assets/images/BG_blue.png",
    price: 30,
    icon: Icons.pentagon,
    lesson: "12",
    time: "28 hrs 40 mins",
  ),
];
