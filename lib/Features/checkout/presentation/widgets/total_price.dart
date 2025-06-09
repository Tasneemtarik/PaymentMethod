
import 'package:flutter/material.dart';
import 'package:payment_method/core/utils/styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key ,required this.title, required this.value});
final String title;
final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
     children: [ Text('Total', style: Style.textStyle24),
                  Spacer(),
                  Text(r'50,97$', style: Style.textStyle24),],
    );
  }
}
