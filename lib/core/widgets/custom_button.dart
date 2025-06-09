import 'package:flutter/material.dart';
import 'package:payment_method/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.title, this.onpressed});
  final String title;
  void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff34A853),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        fixedSize: Size(double.maxFinite, 73),

        // textStyle: Style.textStyle24.copyWith(fontSize: 22),
      ),
      child: Text(title, style: Style.textstyle22),
    );
  }
}
