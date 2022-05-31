import 'package:flutter/material.dart';
import 'package:grocery_shop_dribbble/utils/app_colors.dart';

class SearchFood extends StatelessWidget {
  const SearchFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Let\'s find best food here',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.gray.withOpacity(.15),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Icon(Icons.search, color: AppColors.gray),
              SizedBox(width: 10),
              Text(
                'Search now...',
                style: TextStyle(color: AppColors.gray),
              )
            ],
          ),
        )
      ],
    );
  }
}
