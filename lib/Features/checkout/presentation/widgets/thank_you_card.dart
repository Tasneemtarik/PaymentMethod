import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:payment_method/Features/checkout/presentation/widgets/thank_you_item.dart';
import 'package:payment_method/Features/checkout/presentation/widgets/total_price.dart';
import 'package:payment_method/core/utils/styles.dart';

import 'card_info_widget.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Color(0xffEDEDED),
        borderRadius: BorderRadius.circular(
          20,
        ), // You can adjust the radius value
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, left: 16, right: 16),
        child: Column(
          children: [
            Text("Thank you!", style: Style.textstyle25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Your transaction was successful',
                style: Style.textstyle20,
              ),
            ),
            const SizedBox(height: 30),
            CardInfoItem(title: "Date", value: "01/24/2023"),
            SizedBox(height: 16),
            CardInfoItem(title: 'Time', value: "10:15 AM"),
            SizedBox(height: 16),
            CardInfoItem(title: 'to', value: 'Sam louis'),
            SizedBox(height: 16),
            Divider(thickness: 2, color: Colors.grey),
            SizedBox(height: 16),

            TotalPrice(title: "Total", value: r"50.97$"),
            SizedBox(height: 150),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
              child: CardInfoWidget(),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  SvgPicture.asset('assets/images/qr.svg'),
                  Spacer(),
                  Container(
                    width: 113,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Color(0xff34A853)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Text(
                        "PAID",
                        style: Style.textStyle24.copyWith(
                          color: Color(0xff34A853),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ((MediaQuery.of(context).size.height * .2 + 20) / 2) - 40,
            ),
          ],
        ),
      ),
    );
  }
}
