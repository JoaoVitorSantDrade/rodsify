import 'package:flutter/material.dart';
import 'package:rodsify/components/loginComponent/form_camp.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RodLoginForm extends StatefulWidget {
  const RodLoginForm({super.key});

  @override
  State<RodLoginForm> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<RodLoginForm> {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 20),
          child: RodFormField(
              label: "Email",
              icon: Icons.account_circle,
              textController: emailController),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 20),
          child: RodFormField(
            label: "Senha",
            icon: Icons.password,
            textController: passController,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: SignInButtonBuilder(
                backgroundColor: Colors.white,
                onPressed: () => register(context),
                text: "Novo usuário",
                width: 130,
                innerPadding: const EdgeInsets.all(8),
                icon: Icons.app_registration,
                splashColor: const Color.fromARGB(255, 167, 29, 49),
                elevation: 8,
                textColor: const Color.fromARGB(255, 171, 22, 22),
                iconColor: const Color.fromARGB(255, 171, 22, 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: SignInButtonBuilder(
                backgroundColor: Colors.white,
                onPressed: () => normalLogin(
                    context, emailController.text, passController.text),
                text: "Fazer Login",
                width: 130,
                innerPadding: const EdgeInsets.all(8),
                icon: Icons.login_rounded,
                splashColor: const Color.fromARGB(255, 167, 29, 49),
                elevation: 8,
                textColor: const Color.fromARGB(255, 171, 22, 22),
                iconColor: const Color.fromARGB(255, 171, 22, 22),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

Future<dynamic> normalLogin(
    BuildContext context, String email, String password) async {
  try {
    final userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    if (context.mounted) {
      Navigator.pushNamed(context, '/main', arguments: userCredential);
    }
    // No warnings now
  } on FirebaseAuthException catch (e) {
    switch (e.code) {
      case "operation-not-allowed":
        break;
      case "unknown":
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              icon: const Icon(Icons.error_outline),
              // Retrieve the text the that user has entered by using the
              // TextEditingController.
              actionsAlignment: MainAxisAlignment.center,
              actions: [
                SignInButtonBuilder(
                  backgroundColor: Colors.white,
                  onPressed: () => register(context),
                  text: "Novo usuário",
                  width: 130,
                  innerPadding: const EdgeInsets.all(8),
                  icon: Icons.app_registration,
                  splashColor: const Color.fromARGB(255, 167, 29, 49),
                  elevation: 8,
                  textColor: const Color.fromARGB(255, 171, 22, 22),
                  iconColor: const Color.fromARGB(255, 171, 22, 22),
                )
              ],
              content: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Usuario não encontrado"),
                ],
              ),
            );
          },
        );
      default:
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              icon: const Icon(Icons.error_outline),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(e.message ?? ""),
                ],
              ),
            );
          },
        );
    }
  }
}

Future<dynamic> register(BuildContext context) async {
  if (context.mounted) {
    Navigator.pushNamed(context, '/register');
  }
  // No warnings now
}
