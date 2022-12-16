import 'package:flutter/material.dart';
import 'package:flutter_ui/commons/constants/app_colors.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final Function(int)? onTap;
  final int? selectedIndex;

  const CustomBottomNavigationBar({
    Key? key,
    this.onTap,
    this.selectedIndex,
  }) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.0,
      child: BottomNavigationBar(
        backgroundColor: AppColors.darkLight,
        selectedItemColor: AppColors.yellow,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            // icon: Icon(Icons.control_point),
            // label: 'Novo bolão',
            icon: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.control_point,
                    color: widget.selectedIndex == 0
                        ? AppColors.yellow
                        : AppColors.grey,
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    'Novo bolão',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: widget.selectedIndex == 0
                          ? AppColors.yellow
                          : AppColors.grey,
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.sports_soccer,
                    color: widget.selectedIndex == 1
                        ? AppColors.yellow
                        : AppColors.grey,
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    'Meus bolões',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: widget.selectedIndex == 1
                          ? AppColors.yellow
                          : AppColors.grey,
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          ),
        ],
        currentIndex: widget.selectedIndex!,
        onTap: (int index) {
          if (index != widget.selectedIndex! && index == 0) {
            // Navigator.pushNamed(
            //   context,
            //   NamedRoute.new_,
            // );
          } else if (index != widget.selectedIndex! && index == 1) {
            // Navigator.pushNamed(
            //   context,
            //   NamedRoute.my,
            // );
          }
        },
      ),
    );
  }
}
