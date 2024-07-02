import 'package:bookly/features/book_details/presentation/view/widgets/book_details_body.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return BookDetailsBody(book: book,);
  }
}


