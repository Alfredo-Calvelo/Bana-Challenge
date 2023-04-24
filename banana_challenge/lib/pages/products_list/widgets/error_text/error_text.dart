import 'package:flutter/material.dart';

import 'error_text_styles.dart';



// ignore: must_be_immutable
class ErrorText extends StatelessWidget {
  String busqueda;
  ErrorText({
    super.key,
    required this.busqueda
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ErrorTextStyles.errorTextWidth(context),
      child: Text('No se encontraron resultados para "$busqueda"')
    );
  }
}