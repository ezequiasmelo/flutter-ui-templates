import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui/commons/constants/app_colors.dart';
import 'package:flutter_ui/commons/widgets/custom_app_bar.dart';
import 'package:flutter_ui/commons/widgets/custom_text_form_field.dart';
import 'package:flutter_ui/commons/widgets/custom_elevated_button.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'BOLÃO TESTE',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'BOLÃO TESTE',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Código: ',
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 12,
                ),
              ),
              Divider(
                height: 30,
                thickness: 0.3,
                color: AppColors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
