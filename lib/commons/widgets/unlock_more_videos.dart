import 'package:flutter/material.dart';
import 'package:flutter_ui_templates/commons/constants/app_colors.dart';

class UnlockMoreVideos extends StatelessWidget {
  const UnlockMoreVideos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 200.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            AppColors.black,
            Colors.transparent,
          ],
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.only(bottom: 20.0),
        decoration: BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.circular(26.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.lock,
              color: AppColors.white,
              size: 48.0,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Unlock more videos',
              style: TextStyle(
                fontSize: 24.0,
                color: AppColors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
