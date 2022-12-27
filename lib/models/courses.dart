import 'package:flutter/material.dart';
import 'package:flutter_ui/models/videos.dart';

class Course {
  final int id;
  final String name;
  final String image;
  final int price;
  final String icon; // final IconData icon;
  final String lesson;
  final String time;
  final List<Video>? videos;

  Course({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.icon,
    required this.lesson,
    required this.time,
    this.videos,
  });

  int countVideosFree(List<Video> videos) {
    var total = 0;
    for (var element in videos) {
      if (element.blocked == false) {
        total += 1;
      }
    }
    return total;
  }
}

List<Course> courses = [
  Course(
    id: 1,
    name: "Illustrator",
    image: "assets/images/BG_red.png",
    price: 60,
    icon: 'assets/images/icon_illustrator.svg', // icon: Icons.pentagon,
    lesson: "12",
    time: "28 hrs 40 mins",
    videos: [
      Video(
        name: '1 : Introduction',
      ),
      Video(
        name: '2 : Tools and Panels',
        blocked: true,
      ),
      Video(
        name: '3 : Creating & Editing Shapes',
        blocked: true,
      ),
      Video(
        name: '4 : Using Pen Tool',
        blocked: true,
      ),
      Video(
        name: '5 : Creating Paths',
        blocked: true,
      ),
      Video(
        name: '6 : Using Brushes and Custom Brushes',
        blocked: true,
      ),
      Video(
        name: '7 : Working with Layers',
        blocked: true,
      ),
      Video(
        name: '8 : Conclusion',
        blocked: true,
      ),
    ],
  ),
  Course(
    id: 2,
    name: "Figma Prototyping",
    image: "assets/images/BG_blue.png",
    price: 45,
    icon: 'assets/images/icon_figma.svg', // icon: Icons.account_tree,
    lesson: "08",
    time: "20 hrs 15 mins",
    videos: [],
  ),
  Course(
    id: 2,
    name: "Figma Prototyping",
    image: "assets/images/BG_blue.png",
    price: 50,
    icon: 'assets/images/icon_illustrator.svg', // icon: Icons.pentagon,
    lesson: "12",
    time: "28 hrs 40 mins",
    videos: [],
  ),
  Course(
    id: 2,
    name: "Figma Prototyping",
    image: "assets/images/BG_blue.png",
    price: 30,
    icon: 'assets/images/icon_illustrator.svg', // icon: Icons.pentagon,
    lesson: "12",
    time: "28 hrs 40 mins",
    videos: [],
  ),
];
