import 'package:flutter/material.dart';
import 'package:grocery_shop_dribbble/utils/app_colors.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 50,
          height: 50,
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
              color: AppColors.primaryPink,
              borderRadius: BorderRadius.circular(10)),
          child: Icon(
            Icons.menu,
            color: AppColors.primaryRed,
          ),
        ),
        Text(
          'Home',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        Container(
          width: 50,
          height: 50,
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
              color: AppColors.primaryPink,
              borderRadius: BorderRadius.circular(10)),
          child: Image.asset('assets/avatar.png'),
        ),
      ],
    );
  }
}
