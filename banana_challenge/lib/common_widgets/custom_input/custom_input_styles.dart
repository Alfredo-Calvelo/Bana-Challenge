



import 'package:banana_challenge/global_styles.dart';
import 'package:flutter/material.dart';

class CustomInputStyles{

  static double inputWidth(context) => GlobalStyles.generalWidth(context);

  static InputDecoration inputDecoration (String label ){
    return InputDecoration(
      
      label: Text(label),
      border: const OutlineInputBorder(
        borderSide: BorderSide(),
      ),

      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: GlobalStyles.mainColor)
      ),
      focusColor: GlobalStyles.mainColor,
      floatingLabelStyle: const TextStyle(color: GlobalStyles.mainColor)
      
    );  
  }


}