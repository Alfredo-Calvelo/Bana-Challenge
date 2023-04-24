

import 'package:banana_challenge/global_styles.dart';
import 'package:flutter/material.dart';

class ProductDetailStyles{

  static const TextStyle descriptionStyle = TextStyle(
    fontSize: 23
  );
  static const TextStyle priceStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w900
  );

  static double width(context) => GlobalStyles.generalWidth(context);

}