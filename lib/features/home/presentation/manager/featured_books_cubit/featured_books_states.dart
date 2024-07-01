part of 'featured_books_cubit.dart';

sealed class FeaturedBooksStates extends Equatable {
  const FeaturedBooksStates();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitialState extends FeaturedBooksStates {}

final class FeaturedBooksSuccessState extends FeaturedBooksStates {
  final List<BookModel> books;
  const FeaturedBooksSuccessState(this.books);
}

final class FeaturedBooksLoadingState extends FeaturedBooksStates {}

final class FeaturedBooksErrorState extends FeaturedBooksStates {
  final String errMessage;
  const FeaturedBooksErrorState(this.errMessage);
}

