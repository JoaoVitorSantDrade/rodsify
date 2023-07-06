import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rodsify/firebase_options.dart';
import 'package:rodsify/views/login_view.dart';
import 'package:rodsify/views/main_view.dart';
import 'package:rodsify/views/register_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      title: 'Rodsify',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 0, 0, 0),
            primary: const Color.fromRGBO(167, 29, 49, 1),
            secondary: const Color.fromRGBO(171, 22, 22, 1)),
        useMaterial3: true,
      ),
      routes: {
        '/login': (context) => const LoginView(),
        '/main': (context) => const MainView(),
        '/register': (context) => const RegisterView()
      },
    );
  }
}
