import 'package:flutter/material.dart';
// import 'package:flutter_widgets/screens/onboarding_screen.dart';
import 'package:flutter_widgets/sign_in/sign_in.dart';
// import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ON BOARDING SCREEN',
      theme: ThemeData.light(useMaterial3: true),
      home: SignInScreen(),
    );
  }
}
