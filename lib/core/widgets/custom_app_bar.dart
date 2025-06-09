import 'package:flutter/material.dart';
import 'package:payment_method/core/utils/styles.dart';


  AppBar CustomAppBar({ final String? title}) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
      title: Text(
        title ?? '',
        textAlign: TextAlign.center,
        style: Style.textstyle25,
      ),
    );
  }

