import 'package:flutter/material.dart';
import 'package:flutter_ui/commons/constants/app_colors.dart';
import 'package:flutter_ui/models/polls.dart';

class CustomCard extends StatelessWidget {
  final Poll? pools;
  final int index;

  const CustomCard(this.pools, this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      decoration: BoxDecoration(
        color: AppColors.greyDark,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Container(
        margin: const EdgeInsets.all(16.0),
        constraints: const BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              pools!.name,
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Criado por',
              style: TextStyle(
                color: AppColors.grey,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
