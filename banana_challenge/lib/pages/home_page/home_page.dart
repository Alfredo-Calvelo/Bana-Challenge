import 'package:flutter/material.dart';

import '../../common_widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(title: 'Home'),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
  
}