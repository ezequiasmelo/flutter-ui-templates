import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_templates/commons/constants/app_colors.dart';
import 'package:flutter_ui_templates/commons/widgets/custom_radio_chips.dart';

class HomeCategories extends StatefulWidget {
  const HomeCategories({super.key});

  @override
  State<HomeCategories> createState() => _HomeCategoriesState();
}

class _HomeCategoriesState extends State<HomeCategories> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Stack(
            children: [
              Positioned.fill(
                left: 10,
                top: 12,
                right: 10,
                bottom: 24,
                child: Container(
                  decoration: const BoxDecoration(
                    color: AppColors.greyDark,
                  ),
                ),
              ),
              CustomRadioChips(
                values: const [
                  'Design',
                  'Illustration',
                  'Marketing',
                  'Music',
                ],
                onSelected: (index) {
                  log('selected: $index');
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
