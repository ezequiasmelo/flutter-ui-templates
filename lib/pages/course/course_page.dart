import 'package:flutter/material.dart';
import 'package:flutter_ui/commons/constants/app_colors.dart';
import 'package:flutter_ui/pages/course/components/course_app_bar.dart';
import 'package:flutter_ui/pages/course/components/course_header.dart';
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
              const SizedBox(
                height: 24.0,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Course Details',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 24.0,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '${course.lesson} Lesson',
                                style: const TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const Icon(
                                Icons.circle,
                                size: 7,
                                color: AppColors.grey,
                              ),
                              Text(
                                course.time,
                                style: const TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(color: AppColors.error),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
