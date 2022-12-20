import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/commons/constants/app_colors.dart';

class HomeCategories extends StatefulWidget {
  const HomeCategories({super.key});

  @override
  State<HomeCategories> createState() => _HomeCategoriesState();
}

class _HomeCategoriesState extends State<HomeCategories> {
  var sharedValue = 0;
  // late Map<int, Widget> widgets;
  // final Map<int, Widget> widgets = <int, Widget>{
  //   0: Text(
  //     'Design',
  //     style: TextStyle(color: AppColors.white),
  //   ),
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
  Widget build(BuildContext context) {
    return
        // Stack(
        //   alignment: Alignment.center,
        //   children: [
        //     Container(
        //       // width: 10,
        //       height: 10,
        //       decoration: BoxDecoration(
        //         color: AppColors.greyDark,
        //       ),
        //     ),
        //     Container(
        //       // height: 20,
        //       // decoration: BoxDecoration(
        //       //   color: Colors.transparent,
        //       //   border: Border.all(color: AppColors.error),
        //       // ),
        //       child: CupertinoSegmentedControl(
        //         children: {
        //           0: Text(
        //             'Marketing',
        //             style: TextStyle(color: AppColors.grey),
        //           ),
        //           1: Text(
        //             'Music',
        //             style: TextStyle(color: AppColors.grey),
        //           ),
        //         },
        //         onValueChanged: (int val) {
        //           setState(() {
        //             sharedValue = val;
        //           });
        //         },
        //         groupValue: sharedValue,
        //         unselectedColor:
        //             Colors.transparent, // unselectedColor: AppColors.greyDark,
        //         selectedColor: Colors.transparent, // selectedColor: AppColors.blue,
        //         borderColor: Colors.transparent, // borderColor: AppColors.greyDark,
        //       ),
        //     ),
        //     CupertinoSegmentedControl(
        //   // children: widgets,
        //   children: {
        //     0: Stack(
        //       children: [
        //         Align(
        //           child: Container(
        //             margin: EdgeInsets.only(left: 20),
        //             height: 10,
        //             color: AppColors.greyDark,
        //           ),
        //         ),
        //         Container(
        //           margin: const EdgeInsets.all(12.0),
        //           padding: const EdgeInsets.only(right: 15.0),
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(20.0),
        //             color: sharedValue == 0 ? AppColors.blue : AppColors.greyDark,
        //           ),
        //           child: Text(
        //             'Design',
        //             style: TextStyle(
        //                 color: sharedValue == 0 ? AppColors.white : AppColors.grey),
        //           ),
        //         )
        //       ],
        //     ),
        //     1: Stack(
        //       children: [
        //         Align(
        //           child: Container(
        //             height: 10,
        //             color: AppColors.greyDark,
        //           ),
        //         ),
        //         Container(
        //           margin: const EdgeInsets.all(12.0),
        //           padding: const EdgeInsets.only(right: 15.0),
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(20.0),
        //             color: sharedValue == 1 ? AppColors.blue : AppColors.greyDark,
        //           ),
        //           child: Text(
        //             'Illustration',
        //             style: TextStyle(
        //                 color: sharedValue == 1 ? AppColors.white : AppColors.grey),
        //           ),
        //         ),
        //       ],
        //     ),
        //     2: Text(
        //       'Marketing',
        //       style: TextStyle(color: AppColors.grey),
        //     ),
        //     3: Text(
        //       'Music',
        //       style: TextStyle(color: AppColors.grey),
        //     ),
        //   },
        //   onValueChanged: (int val) {
        //     setState(() {
        //       sharedValue = val;
        //     });
        //   },
        //   groupValue: sharedValue,
        //   unselectedColor:
        //       Colors.transparent, // unselectedColor: AppColors.greyDark,
        //   selectedColor: Colors.transparent, // selectedColor: AppColors.blue,
        //   borderColor: Colors.transparent, // borderColor: AppColors.greyDark,
        //   // pressedColor: Colors.transparent,
        //   // ),
        //   // ],
        // );
        //     Row(
        //   children: [
        //     Stack(
        //       alignment: Alignment.center,
        //       children: [
        //         Container(
        //           padding: const EdgeInsets.all(50),
        //           // width: 100,
        //           height: 10,
        //           color: AppColors.greyDark,
        //         ),
        //         ElevatedButton(
        //           onPressed: () {},
        //           child: const Text('Design'),
        //         ),
        //       ],
        //     ),
        //     Stack(
        //       alignment: Alignment.center,
        //       children: [
        //         // Container(
        //         //   // padding: EdgeInsets.all(80),
        //         //   // width: 100,
        //         //   height: 10,
        //         //   color: AppColors.greyDark,
        //         // ),
        //         // ElevatedButton(
        //         //   onPressed: () {},
        //         //   child: Text('Illustration'),
        //         // ),
        //         Ink(
        //           height: 48.0,
        //           decoration: const BoxDecoration(
        //               borderRadius: BorderRadius.all(Radius.circular(24.0)),
        //               color: AppColors.greyDark),
        //           child: InkWell(
        //             borderRadius: const BorderRadius.all(Radius.circular(24.0)),
        //             onTap: () {},
        //             child: const Align(
        //               child: Text(
        //                 'illustration',
        //               ),
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ],
        // );

        //     CupertinoSegmentedControl(
        //   children: <int, Widget>{
        //     0: Container(
        //       margin: const EdgeInsets.all(12.0),
        //       // padding: const EdgeInsets.only(right: 15.0),
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(20.0),
        //         color: sharedValue == 0 ? AppColors.blue : AppColors.greyDark,
        //       ),
        //       child: Text(
        //         'Design',
        //         style: TextStyle(
        //           color: sharedValue == 0 ? AppColors.white : AppColors.grey,
        //         ),
        //       ),
        //     ),
        //     1: Text(
        //       'Illustration',
        //       style: TextStyle(color: AppColors.grey),
        //     ),
        //     2: Text(
        //       'Marketing',
        //       style: TextStyle(color: AppColors.grey),
        //     ),
        //     3: Text(
        //       'Music',
        //       style: TextStyle(color: AppColors.grey),
        //     ),
        //   },
        //   onValueChanged: (int val) {
        //     setState(() {
        //       sharedValue = val;
        //     });
        //   },
        //   groupValue: sharedValue,
        //   unselectedColor: AppColors.greyDark,
        //   selectedColor: AppColors.blue,
        //   borderColor: AppColors.greyDark,
        //   // pressedColor: Colors.transparent,
        // );
        //https://codingwithdhrumil.com/2021/10/flutter-cupertino-segmented-control-example.html
        Container(
      padding: EdgeInsets.all(12),
      alignment: Alignment.center,
      color: Colors.grey,
      child: CupertinoSlidingSegmentedControl<int>(
        padding: EdgeInsets.all(10),
        thumbColor: CupertinoColors.activeOrange,
        backgroundColor: CupertinoColors.white,
        groupValue: sharedValue,
        children: {
          0: mySegmentWidget("Cricket"),
          1: mySegmentWidget("Soccer"),
          2: mySegmentWidget("Tennis"),
        },
        onValueChanged: (value) {
          setState(() {
            sharedValue = value ?? 0;
          });
        },
      ),
    );
  }
}

Widget mySegmentWidget(String text) {
  return Container(
    child: Text(
      text,
      style: TextStyle(fontSize: 25, color: Colors.black),
    ),
  );
}
