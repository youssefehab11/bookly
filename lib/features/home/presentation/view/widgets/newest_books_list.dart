import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/core/widgets/error.dart';
import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/view/widgets/newest_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksSliverList extends StatelessWidget {
  const NewestBooksSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksStates>(
      builder: (context, state) {
        if (state is NewestBooksSuccessState) {
          return SliverList.builder(
            itemBuilder: (context, index) => NewestBookItem(book: state.books[index],),
            itemCount: state.books.length,
          );
        } else if (state is NewestBooksErrorState) {
          return SliverFillRemaining(
            child: ErrorText(state.errMessage),
          );
        }
        else{
          return const SliverFillRemaining(
            child: CustomLoadingIndicator(),
          );
        }
      },
    );
  }
}
