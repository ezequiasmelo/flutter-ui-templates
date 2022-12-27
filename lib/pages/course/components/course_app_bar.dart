import 'package:flutter/material.dart';
import 'package:flutter_ui/commons/constants/app_colors.dart';

class CourseAppBar extends StatefulWidget {
  const CourseAppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CourseAppBar> createState() => _CourseAppBarState();
}

class _CourseAppBarState extends State<CourseAppBar> {
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 15.0, right: 15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(favorite ? Icons.favorite : Icons.favorite_border),
                color: favorite ? AppColors.error : AppColors.white,
                tooltip: 'Favorite',
                onPressed: () {
                  setState(() {
                    favorite = !favorite;
                  });
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
