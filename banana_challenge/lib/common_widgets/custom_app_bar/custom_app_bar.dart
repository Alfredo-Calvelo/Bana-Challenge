

import 'package:flutter/material.dart';

import '../../global_styles.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  
  String? title;
  
  CustomAppBar({this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: GlobalStyles.mainColor,
      title: Text(title??''),
    );
  }


  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}