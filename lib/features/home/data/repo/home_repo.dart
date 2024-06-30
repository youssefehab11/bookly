import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Either<Failure, List<BookModel>> fetchBestSellerBooks();
  Either<Failure, List<BookModel>> fetchFeaturedBooks();
}