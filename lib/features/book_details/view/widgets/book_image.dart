import 'package:bookly/core/widgets/default_book_image.dart';
import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  const BookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.5,
      child: const DefaultBookImage(),
      );
  }
}