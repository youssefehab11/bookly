import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/default_book_name.dart';
import 'package:bookly/features/book_details/view/widgets/book_details_app_bar.dart';
import 'package:bookly/features/book_details/view/widgets/book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const BookDetailsAppBar(),
            const SizedBox(height: 16.0,),
            const BookImage(),
            DefaultBookName(style: TextStyles.textStyle24,textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}


