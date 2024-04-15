import 'package:flutter/material.dart';
import 'package:hubtel_code/pages/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hubtel App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(1, 199, 177, 1),),
        useMaterial3: true,
      ),
      home: const DashBoard(),
    );
  }
}

