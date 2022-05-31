import 'package:flutter/material.dart';
import 'package:grocery_shop_dribbble/screens/home_screen.dart';
import 'package:grocery_shop_dribbble/screens/on_boarding_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery Shop',
      debugShowCheckedModeBanner: false,
      routes: {
        OnBoardingScreen.routeName: (_) => OnBoardingScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
      },
      initialRoute: OnBoardingScreen.routeName,
    );
  }
}
