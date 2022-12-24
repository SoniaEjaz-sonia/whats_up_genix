import 'package:flutter/material.dart';
import 'package:whats_up_genix/constants/app_colors.dart';
import 'package:whats_up_genix/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData().copyWith(
        primaryColor: AppColors.darkTealGreenColor,
        secondaryHeaderColor: AppColors.tealGreenColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.darkTealGreenColor,
        ),
      ),
      home: const WhatsUpHome(title: 'WhatsUp'),
    );
  }
}
