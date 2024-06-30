import 'package:bookly/core/routing/routes.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/book_price.dart';
import 'package:bookly/core/widgets/book_reviews.dart';
import 'package:bookly/core/widgets/default_book_image.dart';
import 'package:bookly/core/widgets/author_and_book_names.dart';
import 'package:flutter/material.dart';

class BestSellerBookItem extends StatelessWidget {
  const BestSellerBookItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, AppRoutes.kBookDetails),
      child: Container(
        height: 160,
        margin: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const DefaultBookImage(),
            const SizedBox(
              width: 12.0,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BookNameWithAuthor(
                    style: TextStyles.textStyle20,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const Row(
                    children: [BookPrice(), Spacer(), BookReviews()],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
