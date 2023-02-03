import 'package:flutter/material.dart';
import 'package:flutter_ui/commons/constants/app_colors.dart';

class CustomCard extends StatelessWidget {
  final Widget? child;
  // final Poll? poll;
  final double? height;

  const CustomCard({
    this.child,
    this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 80.0,
      margin: const EdgeInsets.only(bottom: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        gradient: const LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: [0.04, 0.0],
          colors: [AppColors.yellow, AppColors.greyDark],
        ),
      ),
      child: Container(
        margin: const EdgeInsets.all(16.0),
        constraints: const BoxConstraints.expand(),
        child:
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     Text(
            //       poll!.name,
            //       style: const TextStyle(
            //         color: AppColors.white,
            //         fontSize: 16,
            //       ),
            //       textAlign: TextAlign.center,
            //     ),
            //     const Text(
            //       'Criado por',
            //       style: TextStyle(
            //         color: AppColors.grey,
            //         fontSize: 12,
            //       ),
            //     ),
            //   ],
            // ),
            child,
      ),
    );
  }
}
