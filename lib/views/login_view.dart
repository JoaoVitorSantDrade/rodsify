import 'package:flutter/material.dart';
import 'package:rodsify/components/title_name.dart';
import 'package:rodsify/components/loginComponent/login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 171, 22, 22),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: width * 0.05, vertical: height * 0.1),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TitleName(),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: const RodLoginForm(),
              )
            ]),
      ),
    );
  }
}
