import 'package:flutter/material.dart';
import 'package:payment_method/Features/checkout/presentation/views/payment_details.dart';
import 'package:payment_method/Features/checkout/presentation/widgets/payment_methods.dart';
import 'package:payment_method/core/widgets/custom_app_bar.dart';
import 'package:payment_method/core/widgets/custom_button.dart';
import 'package:payment_method/Features/checkout/presentation/widgets/order_info_item.dart';
import 'package:payment_method/Features/checkout/presentation/widgets/total_price.dart';

import '../widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: CustomAppBar(title: 'My Cart'),
      ),
      body: MyCardViewBody(),
    );
  }
}



