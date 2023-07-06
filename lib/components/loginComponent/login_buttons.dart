import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginButtons extends StatefulWidget {
  final String username;
  final String password;

  const LoginButtons({
    super.key,
    required this.username,
    required this.password,
  });

  @override
  State<LoginButtons> createState() => _LoginButtonsState();
}

class _LoginButtonsState extends State<LoginButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 20),
          child: SignInButtonBuilder(
            text: 'Convidado',
            icon: Icons.login,
            onPressed: () => guestLogin(context),
            innerPadding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 20),
            width: 130,
            splashColor: const Color.fromARGB(255, 167, 29, 49),
            elevation: 8,
            backgroundColor: Colors.white,
            textColor: const Color.fromARGB(255, 171, 22, 22),
            iconColor: const Color.fromARGB(255, 171, 22, 22),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 20),
          child: SignInButtonBuilder(
            text: 'Entrar',
            icon: Icons.login,
            onPressed: () =>
                normalLogin(context, widget.username, widget.password),
            innerPadding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            width: 130,
            splashColor: const Color.fromARGB(255, 167, 29, 49),
            elevation: 8,
            backgroundColor: Colors.white,
            textColor: const Color.fromARGB(255, 171, 22, 22),
            iconColor: const Color.fromARGB(255, 171, 22, 22),
          ),
        ),
      ],
    );
  }
}

Future<dynamic> guestLogin(BuildContext context) async {
  try {
    final userCredential = await FirebaseAuth.instance.signInAnonymously();
    print("Signed in with temporary account.");
    if (context.mounted) {
      Navigator.pushNamed(context, '/main', arguments: userCredential);
    }
    // No warnings now
  } on FirebaseAuthException catch (e) {
    switch (e.code) {
      case "operation-not-allowed":
        print("Anonymous auth hasn't been enabled for this project.");
        break;
      default:
        print("Unknown error.");
    }
  }
}

Future<dynamic> normalLogin(
    BuildContext context, String email, String password) async {
  try {
    final userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    print("Signed in with account.");
    if (context.mounted) {
      Navigator.pushNamed(context, '/main', arguments: userCredential);
    }
    // No warnings now
  } on FirebaseAuthException catch (e) {
    switch (e.code) {
      case "operation-not-allowed":
        print("Anonymous auth hasn't been enabled for this project.");
        break;
      default:
        print("Unknown error.");
    }
  }
}
