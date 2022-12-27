import 'package:flutter/material.dart';
import 'package:flutter_ui/commons/constants/app_colors.dart';
import 'package:flutter_ui/models/videos.dart';

class CourseList extends StatelessWidget {
  final List<Video>? videos;

  const CourseList({super.key, this.videos});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            sliver: SliverFixedExtentList(
              itemExtent: 60.0,
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return GestureDetector(
                    onTap: () => {
                      // Navigator.pushNamed(
                      //   context,
                      //   NamedRoute.course,
                      // )
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(bottom: 10.0),
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        color: AppColors.greyDark,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            videos![index].name,
                            style: TextStyle(
                              color: videos![index].blocked!
                                  ? AppColors.grey
                                  : AppColors.white,
                              fontSize: 16.0,
                            ),
                          ),
                          Icon(
                            videos![index].blocked!
                                ? Icons.lock
                                : Icons.play_circle,
                            color: videos![index].blocked!
                                ? AppColors.grey
                                : AppColors.white,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                childCount: videos!.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
