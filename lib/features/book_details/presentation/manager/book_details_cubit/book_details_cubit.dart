import 'package:bloc/bloc.dart';
import 'package:bookly/features/book_details/data/repo/book_details_repo.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'book_details_state.dart';

class BookDetailsCubit extends Cubit<BookDetailsState> {
  BookDetailsCubit(this.bookDetailsRepo) : super(BookDetailsInitial());

  BookDetailsRepo bookDetailsRepo;

  Future<void> getSimilarBooks() async {
    emit(BookDetailsLoading());
    var result = await bookDetailsRepo.fetchSimilarBooks();
    result.fold((failure) {
      emit(BookDetailsFailure(failure.errMessage));
    }, (books) {
      emit(BookDetailsSuccess(books));
    });
  }
}
