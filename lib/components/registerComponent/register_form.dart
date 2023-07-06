import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:rodsify/components/loginComponent/form_camp.dart';

class RodRegisterForm extends StatefulWidget {
  const RodRegisterForm({super.key});

  @override
  State<RodRegisterForm> createState() => _RodRegisterFormState();
}

class _RodRegisterFormState extends State<RodRegisterForm> {
  final emailController = TextEditingController();
  final emailConfController = TextEditingController();
  final passController = TextEditingController();
  final passConfController = TextEditingController();

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
              label: "Confirme o Email",
              icon: Icons.account_circle,
              textController: emailConfController),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 20),
          child: RodFormField(
            label: "Senha",
            icon: Icons.password,
            textController: passController,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 20),
          child: RodFormField(
            label: "Confirme a Senha",
            icon: Icons.password,
            textController: passConfController,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: SignInButtonBuilder(
                backgroundColor: Colors.white,
                onPressed: () => returnScreen(context),
                text: "Voltar",
                width: 130,
                innerPadding: const EdgeInsets.all(8),
                icon: Icons.keyboard_return,
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
                onPressed: () => registerFirebase(
                    context,
                    emailController.text,
                    emailConfController.text,
                    passController.text,
                    passConfController.text),
                text: "Registrar",
                width: 130,
                innerPadding: const EdgeInsets.all(8),
                icon: Icons.app_registration,
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

Future<dynamic> registerFirebase(BuildContext context, String email,
    String confEmail, String password, String confpassword) async {
  if (email != confEmail) {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          icon: Icon(Icons.error_outline),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Emails diferentes"),
            ],
          ),
        );
      },
    );
  } else if (password != confpassword) {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          icon: Icon(Icons.error_outline),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Senhas diferentes"),
            ],
          ),
        );
      },
    );
  } else {
    try {
      final userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      if (context.mounted) {
        Navigator.pushNamed(context, '/main', arguments: userCredential);
      }
    } on FirebaseAuthException catch (e) {
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
                const Text("Dados Incorretos"),
                Text(e.message ?? ""),
              ],
            ),
          );
        },
      );
    }
  }
}

Future<dynamic> returnScreen(BuildContext context) async {
  if (context.mounted) {
    Navigator.pushReplacementNamed(context, '/login');
  }
  // No warnings now
}
