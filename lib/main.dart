import 'package:bookly/constants.dart';
import 'package:bookly/core/routing/app_router.dart';
import 'package:bookly/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: primaryColor // Status bar color
          ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: primaryColor,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Montserrat',
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      onGenerateRoute: (settings) => AppRouter.generateRoute(settings),
      initialRoute: AppRoutes.kHome,
    );
  }
}
