import 'package:flutter/material.dart';
import 'homepage.dart';
import 'login_page.dart';
import 'registration_page.dart';
import 'dashboard.dart';
import 'profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        LoginPage.routeName: (context) => const LoginPage(),
        RegistrationPage.routeName: (context) => const RegistrationPage(),
        Dashboard.routeName: (context) => Dashboard(), // Remove 'const' here
        Profile.routeName: (context) => const Profile(),
      },
    );
  }
}
