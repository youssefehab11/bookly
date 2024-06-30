import 'package:bookly/core/animation/navigation.dart';
import 'package:bookly/core/routing/routes.dart';
import 'package:bookly/features/book_details/presentation/view/book_details_view.dart';
import 'package:bookly/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    return switch (settings.name) {
      AppRoutes.kHome => MaterialPageRoute(builder: (context) => const HomeView(),),
      AppRoutes.kBookDetails => RightTransitionNavigation(page: const BookDetailsView()),
      _ => MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        ),
    };
  }
}
