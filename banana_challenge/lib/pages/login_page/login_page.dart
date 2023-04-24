



import 'package:banana_challenge/common_widgets/custom_button/custom_button.dart';
import 'package:banana_challenge/common_widgets/custom_input/custom_input.dart';
import 'package:banana_challenge/pages/login_page/log_ing_styles.dart';
import 'package:banana_challenge/pages/login_page/services.dart';
import 'package:banana_challenge/pages/login_page/widgets/error_message/error_message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/log_in_provider/log_in_provider.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final logIngprovider = Provider.of<LogInProvider>(context, listen: false);

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: LogInStyles.heigthTotal(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              SizedBox(height: LogInStyles.topPadding(context)),
                
              const Text(
                style: LogInStyles.titleTextStyle,
                'Bienvenido'
              ),
                
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const ErrorMessage(),
                  const SizedBox(height: 25),
                  CustomInput(callback: logIngprovider.setUser, label: 'Usuario',),
                  const SizedBox(height: 20),
                  CustomInput(callback: logIngprovider.setPassword, label: 'Contraseña',),
                  const SizedBox(height: 50),
                  CustomButton(callback: navegar, label: 'Ingresar',),
                  const SizedBox(height: 25),

            
                ]
              ),
                
            ]
          ),
        ),
      ),
    );
  }
}