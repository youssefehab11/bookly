import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookNameWithAuthor extends StatelessWidget {
  const BookNameWithAuthor({
    super.key,
    required this.style,
    this.crossAxisAlignment,
    this.textAlign,
    required this.bookName,
    required this.authorName
  });
  final TextStyle style;
  final CrossAxisAlignment? crossAxisAlignment;
  final TextAlign? textAlign;
  final String bookName;
  final String authorName;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      children: [
        Text(
          bookName,
          textAlign: textAlign ?? TextAlign.start,
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
            authorName,
            textAlign: textAlign ?? TextAlign.start,
            style: TextStyles.textStyle14,
          ),
        ),
      ],
    );
  }
}
