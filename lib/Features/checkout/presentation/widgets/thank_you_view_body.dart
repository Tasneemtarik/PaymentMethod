import 'package:flutter/material.dart';

import 'custom_check_Icon.dart';
import 'custom_dahed_icon.dart';
import 'thank_you_card.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ThankYouCard(),
            Positioned(top: -50, right: 0, left: 0, child: CustomCheckIcon()),
            // Positioned(top: 150, child: DottedLine()),
            Positioned(
              left: 20 + 8,
              right: 20 + 8,
              bottom: MediaQuery.of(context).size.height * .2 + 20,
              child: CustomDashedIcon(),
            ),
            Positioned(
              left: -20,
              bottom: MediaQuery.of(context).size.height * .2,
              child: CircleAvatar(backgroundColor: Colors.white),
            ),
            // Divider(color: Colors.black, thickness: 2),
            Positioned(
              right: -20,
              bottom: MediaQuery.of(context).size.height * .2,
              child: CircleAvatar(backgroundColor: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
