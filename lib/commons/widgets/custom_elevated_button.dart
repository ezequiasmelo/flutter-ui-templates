import 'package:flutter/material.dart';
import 'package:flutter_ui/commons/widgets/custom_circular_progress_indicator.dart';

import '../constants/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final bool isLoading;

  const CustomElevatedButton({
    Key? key,
    this.onPressed,
    required this.text,
    required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.yellow,
        disabledBackgroundColor: AppColors.yellow.withOpacity(.6),
        minimumSize: const Size.fromHeight(50),
        fixedSize: const Size(0, 50),
      ),
      child: isLoading
          ? const CustomCircularProgressIndicator()
          : Text(
              text,
              style: const TextStyle(
                color: AppColors.dark,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
    );
  }
}
