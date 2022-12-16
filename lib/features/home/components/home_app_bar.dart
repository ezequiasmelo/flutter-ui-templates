import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hello,',
            style: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              const Text(
                'Anni',
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              SizedBox(
                width: 50,
                height: 50,
                child: Image.asset(
                  "assets/images/wave.png",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          )
        ],
      ),
      toolbarHeight: 140,
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0, right: 15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(Icons.search),
                tooltip: 'Comment Icon',
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.notifications_none),
                tooltip: 'Setting Icon',
                onPressed: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
