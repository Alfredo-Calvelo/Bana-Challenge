



import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/log_in_provider/log_in_provider.dart';

void navegar(BuildContext context) async {
  final logIngprovider = Provider.of<LogInProvider>(context, listen: false);
  
  await logIngprovider.getAuth();
  if (logIngprovider.response == 'success') {
    // ignore: use_build_context_synchronously
    Navigator.popAndPushNamed(context, 'products_list');
  }


}