import 'package:flutter/material.dart';
import 'package:flutter_ui/commons/constants/app_colors.dart';
import 'package:flutter_ui/models/courses.dart';

class CourseHeader extends StatelessWidget {
  const CourseHeader({
    Key? key,
    required this.course,
  }) : super(key: key);

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 64.0,
          height: 64.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0),
            color: AppColors.error,
          ),
          child: Icon(
            course.icon,
            color: AppColors.white,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                course.name,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 32.0,
                ),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    color: AppColors.white,
                  ),
                  SizedBox(width: 5),
                  Text(
                    '4.5',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: 100,
          child: Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              const Positioned(
                top: 10,
                right: 55,
                child: Icon(
                  Icons.attach_money,
                  color: AppColors.white,
                  size: 20.0,
                ),
              ),
              Text(
                course.price.toString(),
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 48.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
