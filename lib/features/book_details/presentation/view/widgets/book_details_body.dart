import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/author_and_book_names.dart';
import 'package:bookly/core/widgets/book_reviews.dart';
import 'package:bookly/core/widgets/default_sub_title.dart';
import 'package:bookly/features/book_details/presentation/view/widgets/book_actions.dart';
import 'package:bookly/features/book_details/presentation/view/widgets/book_details_app_bar.dart';
import 'package:bookly/features/book_details/presentation/view/widgets/book_image.dart';
import 'package:bookly/features/book_details/presentation/view/widgets/similar_books_list.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({
    super.key,
    required this.book
  });

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const BookDetailsAppBar(),
              const SizedBox(
                height: 16.0,
              ),
              const BookImage(),
              const SizedBox(
                height: 32.0,
              ),
              BookNameWithAuthor(
                style: TextStyles.textStyle24,
                crossAxisAlignment: CrossAxisAlignment.center,
                textAlign: TextAlign.center, bookName: book.volumeInfo.title!, authorName: book.volumeInfo.authors![0],
              ),
              const SizedBox(
                height: 12.0,
              ),
              const BookReviews(),
              const BookActions(),
              const Align(
                alignment: AlignmentDirectional.centerStart,
                child: DefaultSubTitle(
                  title: 'You can also like',
                ),
              ),
              
              SimilarBooksList(imageUrl: book.volumeInfo.imageLinks.thumbnail),
              const SizedBox(height: 16.0,)
            ],
          ),
        ),
      ),
    );
  }
}


