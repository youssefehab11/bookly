import 'package:bookly/constants.dart';
import 'package:bookly/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: primaryColor,
          textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Montserrat',
              bodyColor: Colors.white,
              displayColor: Colors.white)),
      home: const HomeView(),
    );
  }
}
