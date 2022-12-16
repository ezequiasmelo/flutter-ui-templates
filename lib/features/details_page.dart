import 'package:flutter/material.dart';
import 'package:flutter_ui/commons/constants/app_colors.dart';
import 'package:flutter_ui/commons/widgets/custom_app_bar.dart';
import 'package:flutter_ui/commons/widgets/custom_card.dart';
import 'package:flutter_ui/models/polls.dart';

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
            children: [
              const Text(
                'BOLÃO TESTE',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Código: ',
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 12,
                ),
              ),
              const Divider(
                height: 30,
                thickness: 0.3,
                color: AppColors.grey,
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
                              onTap: () => {
                                // Navigator.pushReplacementNamed(
                                //   context,
                                //   NamedRoute.details,
                                //   arguments: polls[index],
                                // )
                              },
                              child: Stack(
                                children: [
                                  CustomCard(
                                    // height: 500.0,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        const Text(
                                          'Brazil vs. Argentina',
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 14,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        const Text(
                                          '22 de Novembro de 2022 às 16:00h',
                                          style: TextStyle(
                                            color: AppColors.grey,
                                            fontSize: 12,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Text('1'),
                                              Icon(
                                                Icons.clear,
                                                color: AppColors.grey,
                                                size: 30.0,
                                              ),
                                              Text('3'),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    // polls[index],
                                  ),
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
    );
  }
}
