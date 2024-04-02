import 'package:bookly/features/book_details/view/widgets/book_details_app_bar.dart';
import 'package:bookly/features/book_details/view/widgets/book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BookDetailsAppBar(),
            SizedBox(height: 16.0,),
            BookImage(),
          ],
        ),
      ),
    );
  }
}


