import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/book_details/data/repo/book_details_repo.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class BookDetailsRepoImpl implements BookDetailsRepo{
  
  ApiService apiService;
  BookDetailsRepoImpl(this.apiService);
  
  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks() async{
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&sort=relevance&q=computer science');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

}