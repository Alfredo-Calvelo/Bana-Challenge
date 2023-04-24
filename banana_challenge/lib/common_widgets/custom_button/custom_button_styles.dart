


import 'package:banana_challenge/global_styles.dart';
import 'package:flutter/material.dart';

class CustomButtonStyles{


  static double widthButton(context) => GlobalStyles.generalWidth(context);

  static const EdgeInsets paddingButton = EdgeInsets.symmetric(vertical: 15);

  static const Color buttonColor = GlobalStyles.mainColor;

  static const TextStyle labelButtonStyle = TextStyle(
    color: Colors.white
  );

}