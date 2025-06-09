import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class CustomDashedIcon extends StatelessWidget {
  const CustomDashedIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DottedLine(
      direction: Axis.horizontal,
      lineLength: MediaQuery.of(context).size.width * .9,
      lineThickness: 2.0,
      dashRadius: 10,
      dashLength: 4,
      dashColor: Color(0xffB8B8B8),
      dashGapLength: 4.0,
    );
  }
}