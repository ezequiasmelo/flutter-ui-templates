import 'package:flutter/material.dart';
import 'package:flutter_ui/commons/constants/app_colors.dart';
import 'package:flutter_ui/commons/constants/routes.dart';
import 'package:flutter_ui/features/details_page.dart';
import 'package:flutter_ui/features/find_page.dart';
import 'package:flutter_ui/features/my_page.dart';
import 'package:flutter_ui/features/new_page.dart';
import 'package:flutter_ui/features/splash_page.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.dark,
        appBarTheme: ThemeData.dark().appBarTheme.copyWith(
              backgroundColor: AppColors.darkLight,
              centerTitle: true,
            ),
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      // home: const NewPage(),
      initialRoute: NamedRoute.splash,
      routes: {
        NamedRoute.splash: (context) => const SplashPage(),
        NamedRoute.new_: (context) => const NewPage(),
        NamedRoute.my: (context) => const MyPage(),
        NamedRoute.find: (context) => const FindPage(),
        NamedRoute.details: (context) => const DetailsPage(),
      },
    );
  }
}