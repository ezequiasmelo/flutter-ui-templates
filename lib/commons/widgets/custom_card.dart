import 'package:flutter/material.dart';
import 'package:flutter_ui/commons/constants/app_colors.dart';

class CustomCard extends StatelessWidget {
  final Widget? child;
  final double? height;

  const CustomCard({
    this.child,
    this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: height ?? 80.0,
      margin: const EdgeInsets.only(
          bottom: 20.0), // margin: const EdgeInsets.only(bottom: 12.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          // gradient: const LinearGradient(
          //   begin: Alignment.bottomCenter,
          //   end: Alignment.topCenter,
          //   stops: [0.04, 0.0],
          //   colors: [AppColors.yellow, AppColors.greyDark],
          // ),
          // image: Image.asset('assets/images/BG_blue.png'),
          // color: AppColors.blue,
          image: DecorationImage(
            // alignment: Alignment.center,
            // matchTextDirection: true,
            // repeat: ImageRepeat.noRepeat,
            image: AssetImage("assets/images/BG_blue.png"),
          )),
      // child: Container(
      //   margin: const EdgeInsets.all(16.0),
      //   constraints: const BoxConstraints.expand(),
      //   child: child,
      // ),
    );
  }
}
