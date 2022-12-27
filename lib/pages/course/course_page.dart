import 'package:flutter/material.dart';
import 'package:flutter_ui/commons/constants/app_colors.dart';
import 'package:flutter_ui/commons/widgets/unlock_more_videos.dart';
import 'package:flutter_ui/pages/course/components/course_app_bar.dart';
import 'package:flutter_ui/pages/course/components/course_header.dart';
import 'package:flutter_ui/models/courses.dart';
import 'package:flutter_ui/pages/course/components/course_list.dart';

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
              const SizedBox(height: 24.0),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                '${course.lesson} Lesson ',
                                style: const TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(width: 5.0),
                              const Icon(
                                Icons.circle,
                                size: 7,
                                color: AppColors.grey,
                              ),
                              const SizedBox(width: 5.0),
                              Text(
                                ' ${course.time}',
                                style: const TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6.0,
                          horizontal: 12.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: AppColors.yellow,
                        ),
                        child: Text(
                          '${course.countVideosFree(course.videos!)} Free videos',
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 24.0,
              ),
              course.videos!.isNotEmpty
                  ? Expanded(
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CourseList(
                            videos: course.videos!,
                          ),
                          const UnlockMoreVideos(),
                        ],
                      ),
                    )
                  : const Text(
                      'Videos not found!',
                      style: TextStyle(color: AppColors.white),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
