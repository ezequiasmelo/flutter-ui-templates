import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_templates/commons/constants/app_colors.dart';
import 'package:flutter_ui_templates/models/courses.dart';

class BigCard extends StatelessWidget {
  final Course course;

  const BigCard(
    this.course, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          repeat: ImageRepeat.noRepeat,
          image: AssetImage(course.image),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.all(26.0),
        constraints: const BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  course.icon,
                  color: AppColors.white,
                  width: 40.0,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    course.name,
                    style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      const Positioned(
                        top: 6,
                        right: 35,
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
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: AppColors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '${course.lesson} Lesson',
                    style: const TextStyle(
                      color: AppColors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Icon(
                    Icons.circle,
                    size: 7,
                  ),
                  Text(
                    course.time,
                    style: const TextStyle(
                      color: AppColors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
