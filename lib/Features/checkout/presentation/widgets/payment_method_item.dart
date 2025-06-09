import 'package:flutter/material.dart';

class PaymentMethodItem extends StatelessWidget {
  PaymentMethodItem({super.key, this.isActive = false, required this.image});
  final bool isActive;
  String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: isActive ? Color(0xff34A853) : Color(0xfffffffff),
            offset: Offset(0, 0),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
        border: Border.all(
          width: 1.5,
          color: isActive ? Color(0xff34A853) : Colors.grey,
        ),
        borderRadius: BorderRadius.circular(15),
        shape: BoxShape.rectangle,
        color: Colors.white,
      ),
      child: SizedBox(
        height: 62,
        width: 95,
        child: Image.asset(image, height: 30, width: 45, fit: BoxFit.scaleDown),
      ),
    );
  }
}
