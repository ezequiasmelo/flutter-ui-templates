import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_ui/commons/constants/app_colors.dart';
import 'package:flutter_ui/commons/widgets/custom_app_bar.dart';
import 'package:flutter_ui/commons/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter_ui/commons/widgets/custom_card.dart';
import 'package:flutter_ui/commons/widgets/custom_elevated_button.dart';
import 'package:flutter_ui/models/polls.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  var isLoading = false;
  var selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Meu boloões',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: CustomElevatedButton(
                  text: 'BUSCAR BOLÃO POR CÓDIGO',
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
              const Divider(),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Você ainda não está participando de nenhum bolão, que tal buscar um por código ou criar um novo?',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: CustomScrollView(
                  scrollDirection: Axis.vertical,
                  slivers: <Widget>[
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(vertical: 24.0),
                      sliver: SliverFixedExtentList(
                        itemExtent: 90.0,
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return GestureDetector(
                              onTap: () => {},
                              child: Stack(
                                children: [
                                  CustomCard(polls[index], index),
                                ],
                              ),
                            );
                          },
                          childCount: polls.length,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
