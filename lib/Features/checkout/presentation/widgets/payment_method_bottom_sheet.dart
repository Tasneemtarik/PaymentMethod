import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';
import 'payment_methods.dart';

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentMethodsListView(),
          SizedBox(height: 32),
          CustomButton(title: 'Continue',onpressed: (){},),
        ],
      ),
    );
  }
}
