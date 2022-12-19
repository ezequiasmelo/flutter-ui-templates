import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_ui/commons/constants/app_colors.dart';

class HomeCategories extends StatefulWidget {
  HomeCategories({super.key});

  @override
  State<HomeCategories> createState() => _HomeCategoriesState();
}

class _HomeCategoriesState extends State<HomeCategories> {
  var sharedValue = 0;
  // late Map<int, Widget> widgets;
  // final Map<int, Widget> widgets = <int, Widget>{
  //   0: Container(
  //       margin: EdgeInsets.all(12.0),
  //       padding: EdgeInsets.only(right: 10.0),
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(20.0),
  //         color: sharedValue == 0 ? AppColors.blue : AppColors.greyDark,
  //       ),
  //       child: Text(
  //         'Design ${sharedValue}',
  //         style: TextStyle(color: AppColors.white),
  //       )),
  //   1: Text(
  //     'Illustration',
  //     style: TextStyle(color: AppColors.grey),
  //   ),
  //   2: Text(
  //     'Marketing',
  //     style: TextStyle(color: AppColors.grey),
  //   ),
  //   3: Text(
  //     'Music',
  //     style: TextStyle(color: AppColors.grey),
  //   ),
  // };

  @override
  void initState() {
    super.initState();
    // widgets = <int, Widget>{
    //   0: Container(
    //       margin: EdgeInsets.all(12.0),
    //       padding: EdgeInsets.only(right: 10.0),
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(20.0),
    //         color: sharedValue == 0 ? AppColors.blue : AppColors.greyDark,
    //       ),
    //       child: Text(
    //         'Design ${sharedValue}',
    //         style: TextStyle(color: AppColors.white),
    //       )),
    //   1: Text(
    //     'Illustration',
    //     style: TextStyle(color: AppColors.grey),
    //   ),
    //   2: Text(
    //     'Marketing',
    //     style: TextStyle(color: AppColors.grey),
    //   ),
    //   3: Text(
    //     'Music',
    //     style: TextStyle(color: AppColors.grey),
    //   ),
    // };
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoSegmentedControl(
      // children: widgets,
      children: {
        0: Stack(
          children: [
            Container(
              height: 10,
              color: AppColors.error,
            ),
            Container(
              margin: const EdgeInsets.all(12.0),
              padding: const EdgeInsets.only(right: 15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: sharedValue == 0 ? AppColors.blue : AppColors.greyDark,
              ),
              child: Text(
                'Design',
                style: TextStyle(
                    color: sharedValue == 0 ? AppColors.white : AppColors.grey),
              ),
            )
          ],
        ),
        1: Container(
          margin: const EdgeInsets.all(12.0),
          padding: const EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: sharedValue == 1 ? AppColors.blue : AppColors.greyDark,
          ),
          child: Text(
            'Illustration',
            style: TextStyle(
                color: sharedValue == 1 ? AppColors.white : AppColors.grey),
          ),
        ),
        2: Text(
          'Marketing',
          style: TextStyle(color: AppColors.grey),
        ),
        3: Text(
          'Music',
          style: TextStyle(color: AppColors.grey),
        ),
      },
      onValueChanged: (int val) {
        setState(() {
          sharedValue = val;
        });
      },
      groupValue: sharedValue,
      unselectedColor:
          Colors.transparent, // unselectedColor: AppColors.greyDark,
      selectedColor: Colors.transparent, // selectedColor: AppColors.blue,
      borderColor: Colors.transparent, // borderColor: AppColors.greyDark,
    );
  }
}
