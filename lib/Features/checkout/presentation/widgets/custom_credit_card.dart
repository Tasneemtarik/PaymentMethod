import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key, required this.formkey, this.autovalidateMode});
  final GlobalKey<FormState> formkey;
  final autovalidateMode;
  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';

  bool showBackView = false;

  // Function(CreditCardBrand)? onCreditCardWidgetChange;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
              height: 192,
              child: CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: showBackView,
                onCreditCardWidgetChange: (value) {},
              ),
            ),
          ),
          CreditCardForm(
            autovalidateMode: widget.autovalidateMode,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (CreditCardModel) {
              cardNumber = CreditCardModel.cardNumber;
              expiryDate = CreditCardModel.expiryDate;
              cvvCode = CreditCardModel.cvvCode;
              cardHolderName = CreditCardModel.cardHolderName;
              showBackView = CreditCardModel.isCvvFocused;
              setState(() {});
            },
            formKey: widget.formkey,
          ),
        ],
      ),
    );
  }
}

// class human {
//   String skincolor;
//   double height;
//   double weight;
//   String bloodtybed;
//   human({
//     required this.skincolor,
//     required this.height,
//     required this.weight,
//     required this.bloodtybed,
//   });
// }

// human tasneem = human(
//   skincolor: "white",
//   height: 155,
//   weight: 60,
//   bloodtybed: "o",
// );
