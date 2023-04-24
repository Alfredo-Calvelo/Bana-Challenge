import 'package:banana_challenge/common_widgets/custom_input/custom_input_styles.dart';
import 'package:banana_challenge/common_widgets/search_bar/search_bar_styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomInput extends StatelessWidget {
  
  Function callback;
  String label;

  CustomInput({
    super.key, 
    required this.callback,
    required this.label
  });


  
  
  @override
  Widget build(BuildContext context) {

    

    return Center(
      child: SizedBox(
        width: SearchBarStyles.inputWidth(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: CustomInputStyles.inputWidth(context),
              child: TextFormField(

                decoration: CustomInputStyles.inputDecoration(label),

                onChanged: (value) {
                  callback(value);
                },
              ),
            ),


          ]
        ),
      ),
    );

  }



}

