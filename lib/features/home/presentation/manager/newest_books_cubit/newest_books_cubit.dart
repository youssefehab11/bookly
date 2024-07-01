import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_states.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates> {
  NewestBooksCubit({required this.homeRepo}) : super(NewestBooksInitialState());

  final HomeRepo homeRepo;

  Future<void> getNewestBooks() async{
    emit(NewestBooksLoadingState());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(NewestBooksErrorState(errMessage: failure.errMessage));
    }, (books) {
      emit(NewestBooksSuccessState(books: books));
    });
    
  }
}
