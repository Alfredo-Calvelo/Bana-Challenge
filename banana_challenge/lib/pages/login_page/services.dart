



import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/log_in_provider/log_in_provider.dart';

void navegar(BuildContext context){
  final logIngprovider = Provider.of<LogInProvider>(context, listen: false);
  
  logIngprovider.getAuth();
  if (logIngprovider.password == 'success') {
    Navigator.popAndPushNamed(context, 'products_list');
  }


}