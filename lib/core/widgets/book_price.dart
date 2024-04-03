import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookPrice extends StatelessWidget {
  const BookPrice({super.key, this.textColor});
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      '19.99 €',
      style: TextStyles.textStyle20.copyWith(
        fontWeight: FontWeight.bold,
        color: textColor
      ),
    );
  }
}
