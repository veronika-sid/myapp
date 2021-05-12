// ignore: import_of_legacy_library_into_null_safe
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import '../pages/admin_page.dart';

import '../resources/mafia_strings.dart';

// ignore: use_key_in_widget_constructors
class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          email(),
          password(),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                Navigator.pushNamedAndRemoveUntil(context, AdminPage.adminPage, (_) => false);
              }
            },
            child: const Text(MafiaString.logIn),
          ),
        ],
      ),
    );
  }

  Widget email() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: MafiaString.email,
      ),
      validator: (value) =>
          EmailValidator.validate(value) ? null : MafiaString.enterEmail,
    );
  }

  Widget password() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: MafiaString.password,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return MafiaString.enterPassword;
        }
        return null;
      },
    );
  }
}
