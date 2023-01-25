import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    Color? color = Colors.deepOrange;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: color,
        body: Container(
          margin: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/42470814?v=4',
                  ),
                  radius: 50.0,
                ),
              ),
              const SizedBox(height: 12),
              Center(
                child: Text(
                  'Ezequias Melo',
                  style: GoogleFonts.pacifico(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Desenvolvedor Flutter'.toUpperCase(),
                  style: GoogleFonts.sourceSansPro(
                    textStyle: TextStyle(
                      color: Colors.deepOrange.shade100,
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: Divider(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8.0),
              Card(
                text: '+55 12345 6789',
                color: color,
                icon: Icons.phone,
              ),
              const SizedBox(height: 12.0),
              Card(
                text: 'email@email.com',
                color: color,
                icon: Icons.mail,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    Key? key,
    required this.color,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final Color? color;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.00,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
          ),
          const SizedBox(width: 10.0),
          Text(
            text,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
