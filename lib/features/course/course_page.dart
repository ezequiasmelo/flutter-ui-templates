import 'package:flutter/material.dart';
import 'package:flutter_ui/commons/constants/app_colors.dart';
import 'package:flutter_ui/features/course/components/course_app_bar.dart';
import 'package:flutter_ui/features/course/components/course_header.dart';
import 'package:flutter_ui/models/courses.dart';

class CoursePage extends StatelessWidget {
  final Course course = courses[0];

  CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: CourseAppBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              CourseHeader(course: course),
            ],
          ),
        ),
      ),
    );
  }
}
