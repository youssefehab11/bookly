import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/book_details/data/repo/book_details_repo_impl.dart';
import 'package:bookly/features/home/data/repo/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));

  getIt.registerSingleton<BookDetailsRepoImpl>(BookDetailsRepoImpl(getIt.get<ApiService>()));
}
