import 'package:flutter/material.dart';
import 'package:grocery_shop_dribbble/utils/app_colors.dart';

class SectionIcon extends StatelessWidget {
  const SectionIcon({Key? key, required this.isSelected, required this.icon})
      : super(key: key);

  final bool isSelected;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color:
              isSelected ? AppColors.primaryRed : Colors.grey.withOpacity(.5),
          size: 24,
        ),
        if (isSelected) ...[
          SizedBox(height: 4),
          Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
                color: AppColors.primaryRed, shape: BoxShape.circle),
          )
        ]
      ],
    );
  }
}
