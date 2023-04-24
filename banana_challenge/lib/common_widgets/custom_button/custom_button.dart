import 'package:banana_challenge/common_widgets/custom_button/custom_button_styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  Function callback;
  String label;
  CustomButton({
    super.key,
    required this.callback,
    required this.label
  });

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: CustomButtonStyles.widthButton(context),
      child: MaterialButton(
        color: CustomButtonStyles.buttonColor,
        padding: CustomButtonStyles.paddingButton,
        onPressed: () {
          callback(context); 
        },      
        child: Text(label, style: CustomButtonStyles.labelButtonStyle,),
      ),
    );
  }
}