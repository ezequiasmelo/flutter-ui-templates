import 'package:flutter/material.dart';
import 'package:flutter_ui/commons/constants/routes.dart';
import 'package:flutter_ui/commons/widgets/custom_big_card.dart';
import 'package:flutter_ui/models/courses.dart';

class HomeList extends StatelessWidget {
  const HomeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            sliver: SliverFixedExtentList(
              itemExtent: 310.0,
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return GestureDetector(
                    onTap: () => {
                      Navigator.pushReplacementNamed(
                        context,
                        NamedRoute.course,
                        // arguments: polls[index],
                      )
                    },
                    child: CustomBigCard(courses[index]),
                  );
                },
                childCount: courses.length,
              ),
            ),
          ),
        ],
      ),
      //     ListView.separated(
      //   physics: NeverScrollableScrollPhysics(),
      //   shrinkWrap: true,
      //   itemCount: courses.length,
      //   itemBuilder: (_, idx) => CustomCard(
      //     child: Text('ew'),
      //   ),
      //   separatorBuilder: (_, __) => const SizedBox(height: 10),
      // ),
    );
  }
}
