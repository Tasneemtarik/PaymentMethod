import 'package:flutter/material.dart';
import 'package:payment_method/core/utils/styles.dart';

class OrderInfoItem extends StatelessWidget {
   OrderInfoItem({super.key ,required this.title, required this.value});

  String title;
  String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Style.textstyle18,
          textAlign: TextAlign.center,
        ),
        Spacer(),
        Text(value, style: Style.textstyle18, textAlign: TextAlign.center),
    
      ],
    );
  }
}
