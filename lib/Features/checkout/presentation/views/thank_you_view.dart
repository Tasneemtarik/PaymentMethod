import 'package:flutter/material.dart';
import 'package:payment_method/core/widgets/custom_app_bar.dart';

import '../widgets/thank_you_view_body.dart';

class ThankYoubody extends StatelessWidget {
  const ThankYoubody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Transform.translate(
        offset: Offset(0, -16),
        child: ThankYouViewBody(),
      ),
    );
  }
}
