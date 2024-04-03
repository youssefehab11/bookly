import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookReviews extends StatelessWidget {
  const BookReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star_rounded,
          color: Color(0xFFFFDD4F),
          size: 18.0,
        ),
        const SizedBox(
          width: 3.0,
        ),
        Text(
          '4.8',
          style: TextStyles.textStyle16,
        ),
        const SizedBox(
          width: 3.0,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            '(2390)',
            style: TextStyles.textStyle14,
          ),
        ),
      ],
    );
  }
}
