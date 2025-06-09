import 'dart:math';

import 'package:flutter/material.dart';
import 'package:payment_method/Features/checkout/presentation/views/thank_you_view.dart';
import 'package:payment_method/Features/checkout/presentation/widgets/custom_credit_card.dart';
import 'package:payment_method/Features/checkout/presentation/widgets/payment_methods.dart';
import 'package:payment_method/core/widgets/custom_button.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({super.key});

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  final GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Payment Details ', textAlign: TextAlign.center),
      ),
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(80),
      //   child: BuildAppBar(title: 'Payment Details'),
      // ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: PaymentMethodsListView()),
          // SizedBox(height: 20),
          SliverToBoxAdapter(
            child: CustomCreditCard(
              formkey: formkey,
              autovalidateMode: autovalidateMode,
            ),
          ),
          // SizedBox(height: 20),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12, left: 16, right: 16),
                child: CustomButton(
                  title: 'Pay',
                  onpressed: () {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                      log(10);
                    } else {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return ThankYoubody();
                          },
                        ),
                      );
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                ),
              ),
            ),
          ),
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     children: [
          //       Image.asset('assets/images/Group 2.png', height: 152),
          //       SizedBox(width: 20),

          //       Image.asset(
          //         'assets/images/Group 1.png',
          //         height: 192,
          //         width: 267,
          //       ),
          //       SizedBox(width: 20),

          //       Image.asset('assets/images/Group 3.png', height: 192),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
