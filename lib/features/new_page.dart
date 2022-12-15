import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui/commons/constants/app_colors.dart';
import 'package:flutter_ui/commons/widgets/custom_app_bar.dart';
import 'package:flutter_ui/commons/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter_ui/commons/widgets/custom_text_form_field.dart';
import 'package:flutter_ui/commons/widgets/custom_elevated_button.dart';

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  var isLoading = false;
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          // AppBar(
          //   title: const Text(
          //     'Criar novo bolão',
          //     style: TextStyle(
          //       fontSize: 16,
          //       fontWeight: FontWeight.w500,
          //     ),
          //   ),
          // )
          const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Criar novo bolão',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              const SizedBox(height: 30.0),
              SvgPicture.asset('assets/images/logo.svg'),
              const SizedBox(height: 30.0),
              const Text(
                'Crie seu próprio bolão da copa e compartilhe entre amigos!',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32.0),
              const CustomTextFormField(
                hintText: 'Qual nome do seu bolão?',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: CustomElevatedButton(
                  text: 'CRIAR MEU BOLÃO',
                  onPressed: isLoading
                      ? null
                      : () {
                          log('tap');
                          setState(() {
                            isLoading = true;
                          });

                          Future.delayed(const Duration(seconds: 3), () {
                            setState(() {
                              isLoading = false;
                            });
                          });
                        },
                  isLoading: isLoading,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Após criar seu bolão, você receberá um código único que poderá usar para convidar outras pessoas.',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: selectedIndex,
        onTap: (int index) {
          setState(() => selectedIndex = index);
        },
      ),
    );
  }
}