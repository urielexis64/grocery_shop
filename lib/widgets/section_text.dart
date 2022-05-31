import 'package:flutter/material.dart';

class SectionText extends StatelessWidget {
  const SectionText({Key? key, required this.text, required this.isSelected})
      : super(key: key);

  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              fontSize: 16,
              color: isSelected ? Colors.black : Colors.grey),
        ),
        if (isSelected) ...[
          SizedBox(height: 4),
          Container(
            width: 5,
            height: 5,
            decoration:
                BoxDecoration(color: Colors.black, shape: BoxShape.circle),
          )
        ]
      ],
    );
  }
}
