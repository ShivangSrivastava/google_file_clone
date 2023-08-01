import 'package:flutter/material.dart';
import 'package:google_file_clone/pages/home.dart';
import 'package:google_file_clone/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Files',
      themeMode: ThemeMode.dark,
      darkTheme: MyTheme.darkTheme(context),
      home: const HomePage(),
    );
  }
}
