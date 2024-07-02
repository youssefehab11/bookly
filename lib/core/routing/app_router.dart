import 'package:bookly/core/animation/navigation.dart';
import 'package:bookly/core/routing/routes.dart';
import 'package:bookly/core/utils/api_sevice_locator.dart';
import 'package:bookly/features/book_details/data/repo/book_details_repo_impl.dart';
import 'package:bookly/features/book_details/presentation/manager/book_details_cubit/book_details_cubit.dart';
import 'package:bookly/features/book_details/presentation/view/book_details_view.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.kHome:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );
      case AppRoutes.kBookDetails:
        final arguments = settings.arguments as BookModel;
        return RightTransitionNavigation(
          page: BlocProvider(
            create: (context) =>
                BookDetailsCubit(getIt.get<BookDetailsRepoImpl>())
                  ..getSimilarBooks(),
            child: BookDetailsView(
              book: arguments,
            ),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
