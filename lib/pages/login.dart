import 'package:flutter/material.dart';

import '/resources/mafia_colors.dart';
import '/widgets/login_form.dart';

// ignore: use_key_in_widget_constructors
class Login extends StatelessWidget {
  static const String loginPage = '/login';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MafiaColor.indigo,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          margin: EdgeInsets.symmetric(
              vertical: screenWidth * 0.6, horizontal: screenHeight * 0.05),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: MafiaColor.white,
          ),
          alignment: Alignment.center,
          child: LoginForm(),
        ),
      ),
    );
  }
}
