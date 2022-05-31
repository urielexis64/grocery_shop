import 'package:flutter/material.dart';
import 'package:grocery_shop_dribbble/screens/home_screen.dart';
import 'package:grocery_shop_dribbble/utils/app_colors.dart';
import 'package:grocery_shop_dribbble/utils/my_clipper.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  static const routeName = '/onboarding';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SizedBox(
      width: size.width,
      height: size.height,
      child: Column(
        children: [
          ClipPath(clipper: MyClipper(), child: Image.asset('assets/guy.png')),
          SizedBox(height: 60),
          Text.rich(TextSpan(children: [
            TextSpan(text: 'Buy Your Daily\n'),
            TextSpan(
                text: 'Grocery ',
                style: TextStyle(color: AppColors.primaryRed)),
            TextSpan(text: 'Easily'),
          ], style: TextStyle(fontWeight: FontWeight.w800, fontSize: 28))),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              'The easiest way to share your family\'s grocery shopping-Try it out.',
              style: TextStyle(color: AppColors.gray, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 50),
          InkWell(
            onTap: () =>
                Navigator.pushReplacementNamed(context, HomeScreen.routeName),
            child: Container(
              width: 220,
              height: 45,
              decoration: BoxDecoration(
                  color: AppColors.primaryRed,
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Text(
                  'Let\'s Buy',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
