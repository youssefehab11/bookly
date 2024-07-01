part of 'newest_books_cubit.dart';

sealed class NewestBooksStates extends Equatable {
  const NewestBooksStates();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitialState extends NewestBooksStates {}

final class NewestBooksLoadingState extends NewestBooksStates {}

final class NewestBooksSuccessState extends NewestBooksStates {
  final List<BookModel> books;

  const NewestBooksSuccessState({required this.books});

}

final class NewestBooksErrorState extends NewestBooksStates {
  final String errMessage;

  const NewestBooksErrorState({required this.errMessage});

}
