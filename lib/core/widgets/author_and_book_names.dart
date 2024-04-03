import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookNameWithAuthor extends StatelessWidget {
  const BookNameWithAuthor(
      {super.key, required this.style, this.crossAxisAlignment});
  final TextStyle style;
  final CrossAxisAlignment? crossAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      children: [
        Text(
          'Harry Potter and the Goblet of Fire',
          style: style.copyWith(
            fontFamily: 'GT Sectra Fine',
          ),
        ),
        const SizedBox(
          height: 3.0,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'J.K. Rowling',
            style: TextStyles.textStyle14,
          ),
        ),
      ],
    );
  }
}
