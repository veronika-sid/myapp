import 'package:flutter/material.dart';

import './mafia_colors.dart';
import './mafia_strings.dart';

// ignore: use_key_in_widget_constructors
class Login extends StatelessWidget {
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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                email(),
                password(),
                const SizedBox(height: 20),
                loginButton(),
              ]),
        ),
      ),
    );
  }

  Widget email() {
    return const TextField(
      decoration: InputDecoration(
        labelText: MafiaString.email,
      ),
    );
  }

  Widget password() {
    return const TextField(
      decoration: InputDecoration(
        labelText: MafiaString.password,
      ),
    );
  }

  Widget loginButton() {
    return ElevatedButton(
      child: const Text(MafiaString.logIn),
      onPressed: () {},
    );
  }
}
