import 'package:flutter/material.dart';

import 'core/app_theme.dart';

import 'screens/splash/splash_screen.dart';

void main() {
  runApp(const DahiyaDiagnosticApp());
}

class DahiyaDiagnosticApp extends StatelessWidget {
  const DahiyaDiagnosticApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "Dahiya Diagnostic Center",

      theme: AppTheme.lightTheme,

      home: const SplashScreen(),
    );
  }
}