import 'package:flutter/material.dart';

class CourseAppBar extends StatelessWidget {
  const CourseAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0, right: 15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(Icons.favorite_border),
                tooltip: 'Favorite',
                onPressed: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
