import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/core/widgets/default_book_image.dart';
import 'package:bookly/core/widgets/error.dart';
import 'package:bookly/features/book_details/presentation/manager/book_details_cubit/book_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksList extends StatelessWidget {
  const SimilarBooksList({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookDetailsCubit, BookDetailsState>(
      builder: (context, state) {
        if (state is BookDetailsSuccess) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height / 5,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return DefaultBookImage(
                  state.books[index].volumeInfo.imageLinks.thumbnail,
                );
              },
              itemCount: state.books.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
            ),
          );
        } else if (state is BookDetailsFailure) {
          return ErrorText(state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
