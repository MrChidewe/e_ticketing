import 'package:firebase_setup/pages/login_page.dart';
import 'package:firebase_setup/pages/register_page.dart';
import 'package:flutter/material.dart';

class Authpage extends StatefulWidget {
  const Authpage({Key? key}) : super(key: key);

  @override
  State<Authpage> createState() => _AuthpageState();
}

class _AuthpageState extends State<Authpage> {
  //initially show the log in page
  bool showLoginPage = true;

  void toogleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(showRegisterPage: toogleScreens);
    } else {
      return RegisterPage(showLoginPage: toogleScreens);
    }
  }
}
