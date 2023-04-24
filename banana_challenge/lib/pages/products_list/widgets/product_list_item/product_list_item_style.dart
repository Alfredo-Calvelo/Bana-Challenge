



import 'package:banana_challenge/global_styles.dart';
import 'package:flutter/material.dart';

class ProductListItemStyles{

  static double buttonWidth(BuildContext context) => GlobalStyles.generalWidth(context);
  static double buttonHeight = 250;
  

  static const EdgeInsets buttonPadding = EdgeInsets.all(20);
  static const double buttonElevation = 10;
  static const Color buttonBackgroundColor = Colors.white;


  static const TextStyle titleStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  static double titleWidth(BuildContext context) => MediaQuery.of(context).size.width * 0.60;



  static const TextStyle subTitleStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: Colors.black
  );

  static const TextStyle priceStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w800,
    color: Colors.black 
  );
  static const EdgeInsets pricePadding = EdgeInsets.only(top: 7);
  
  static const TextStyle descriptionStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static const TextStyle stockStyle= TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Colors.black 
  );


  static double separadoresHeight = 35;

}

