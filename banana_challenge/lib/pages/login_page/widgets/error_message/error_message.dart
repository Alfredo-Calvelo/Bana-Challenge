

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

import '../../../../providers/log_in_provider/log_in_provider.dart';
import 'error_message_styles.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({super.key});

  @override
  Widget build(BuildContext context) {

    final logIngprovider = Provider.of<LogInProvider>(context);
    print(logIngprovider.errorAuth);
    if (logIngprovider.errorAuth) {
      return Text('Error: ${logIngprovider.response}', style: ErrorMessageStyles.errorStyle,);
    }
    else {return const SizedBox(height: 0);}
  }
}