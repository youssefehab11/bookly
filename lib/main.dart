import 'package:bookly/constants.dart';
import 'package:bookly/core/routing/app_router.dart';
import 'package:bookly/core/routing/routes.dart';
import 'package:bookly/core/utils/api_sevice_locator.dart';
import 'package:bookly/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLocator();
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>()
          )..getFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>()),
        )
      ],
      child: MaterialApp(
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
      ),
    );
  }
}
