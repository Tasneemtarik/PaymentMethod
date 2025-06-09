import 'package:flutter/material.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Color(0xffEDEDED),
      radius: 50,
      child: CircleAvatar(
        backgroundColor: Color(0xff34A853),
        radius: 40,
        child: Icon(Icons.check, color: Colors.white, size: 60),
      ),
    );
  }
}
