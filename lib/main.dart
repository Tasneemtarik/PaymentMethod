import 'package:flutter/material.dart';
import 'package:payment_method/Features/checkout/presentation/views/my_cart_view.dart';

void main() {
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Checkout App',
      theme: ThemeData(primaryColor: Colors.blue),
      home: MyCartView(),
    );
  }
}
