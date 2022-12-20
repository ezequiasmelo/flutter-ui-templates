import 'package:flutter/material.dart';
import 'package:flutter_ui/features/home/components/home_app_bar.dart';
import 'package:flutter_ui/features/home/components/home_categories.dart';
import 'package:flutter_ui/features/home/components/home_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: HomeAppBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HomeCategories(),
              HomeList(),
            ],
          ),
        ),
      ),
    );
  }
}
