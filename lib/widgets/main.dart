import 'package:flutter/material.dart';

import '../pages/add_player.dart';
import '../pages/admin_page.dart';
import '../pages/login.dart';
import '../pages/main_page.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      routes: {
        Login.loginPage: (context) => Login(),
        AddPlayer.addPlayerPage: (context) => AddPlayer(),
        AdminPage.adminPage: (context) => AdminPage(),
      },
    );
  }
}
