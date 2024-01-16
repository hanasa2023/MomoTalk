import 'package:flutter/material.dart';
import 'package:momotalk/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MomoTalk',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Colors.pink[200]!,
          outline: Color(0xffc3c3c3),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'MomoTalk'),
    );
  }
}
