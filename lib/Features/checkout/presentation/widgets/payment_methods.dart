import 'package:flutter/material.dart';
import 'package:payment_method/Features/checkout/presentation/widgets/payment_method_item.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  @override
  final List<String> Payment_Methods = [
    'assets/images/credit-card.png',
    'assets/images/Group.png',
    'assets/images/Vector.png',
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        itemCount: Payment_Methods.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, int index) {
          return GestureDetector(
            onTap: () {
              activeIndex = index;
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: PaymentMethodItem(
                image: Payment_Methods[activeIndex = index],
                isActive: false,
              ),
            ),
          );
        },
      ),
    );
  }
}
