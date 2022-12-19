import 'package:flutter/material.dart';
import 'package:flutter_ui/commons/widgets/custom_big_card.dart';
import 'package:flutter_ui/features/home/components/home_app_bar.dart';
import 'package:flutter_ui/models/courses.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize:
            Size.fromHeight(120), // preferredSize: Size.fromHeight(140),
        child: HomeAppBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: CustomScrollView(
                  scrollDirection: Axis.vertical,
                  slivers: <Widget>[
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(vertical: 24.0),
                      sliver: SliverFixedExtentList(
                        itemExtent: 300.0,
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return GestureDetector(
                              onTap: () => {
                                // Navigator.pushReplacementNamed(
                                //   context,
                                //   NamedRoute.details,
                                //   arguments: polls[index],
                                // )
                              },
                              child: CustomBigCard(courses[index]),
                            );
                          },
                          childCount: courses.length,
                        ),
                      ),
                    ),
                  ],
                ),
                //     ListView.separated(
                //   physics: NeverScrollableScrollPhysics(),
                //   shrinkWrap: true,
                //   itemCount: courses.length,
                //   itemBuilder: (_, idx) => CustomCard(
                //     child: Text('ew'),
                //   ),
                //   separatorBuilder: (_, __) => const SizedBox(height: 10),
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
