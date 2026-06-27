import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
void main() {
  runApp(const DahiyaDiagnosticApp());
}

class DahiyaDiagnosticApp extends StatelessWidget {
  const DahiyaDiagnosticApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dahiya Diagnostic Center',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dahiya Diagnostic Center"),
        centerTitle: true,
      ),
body: Padding(
  padding: const EdgeInsets.all(20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 20),

      const Text(
        "Welcome to Dahiya Diagnostic Center",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),

      const SizedBox(height: 30),

      ElevatedButton(
        onPressed: () {},
        child: const Text("Book Appointment"),
      ),

      const SizedBox(height: 15),

      ElevatedButton(
        onPressed: () {},
        child: const Text("View Doctors"),
      ),

      const SizedBox(height: 15),

      ElevatedButton(
        onPressed: () {},
        child: const Text("Diagnostic Tests"),
      ),
    ],
  ),
),
    );
  }
}  