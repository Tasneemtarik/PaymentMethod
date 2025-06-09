import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';
import 'order_info_item.dart';
import 'payment_method_bottom_sheet.dart';
import 'total_price.dart';

class MyCardViewBody extends StatelessWidget {
  const MyCardViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 18),
            Expanded(child: Image.asset('assets/images/Group 6.png')),
    
            SizedBox(height: 20),
            OrderInfoItem(title: 'Order Subtotal', value: r"42.97$"),
            SizedBox(height: 3),
            OrderInfoItem(title: 'Discount', value: r'0$'),
            SizedBox(height: 3),
    
            OrderInfoItem(title: 'Shipping', value: r'8$'),
            SizedBox(height: 3),
            Divider(thickness: 2, color: Color(0xffC7C7C7)),
    
            TotalPrice(title: 'Total', value: r'50.97$'),
            SizedBox(height: 16),
            CustomButton(
              title: 'Complete Payment',
              onpressed: () {
                showBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  context: context,
                  builder: (context) {
                    return PaymentMethodBottomSheet();
                  },
                );
    
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return PaymentDetails();
                //     },
                //   ),
                // );
              },
            ),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}