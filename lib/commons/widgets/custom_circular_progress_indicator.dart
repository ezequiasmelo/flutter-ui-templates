import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 20.0,
      height: 20.0,
      child: CircularProgressIndicator(
        color: AppColors.black,
        strokeWidth: 2.0,
      ),
    );
  }
}
