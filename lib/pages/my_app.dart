import 'package:flutter/material.dart';
import 'package:hello_there_test_app/pages/home_page.dart';

///main material app ran from the main function
class MyApp extends StatelessWidget {
  ///initialization
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello There',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
