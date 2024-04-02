import 'package:flutter/material.dart';

class DefaultBookName extends StatelessWidget {
  const DefaultBookName({super.key, required this.style, this.textAlign});
  final TextStyle style;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      'Harry Potter and the Goblet of Fire',
      textAlign: textAlign ?? TextAlign.start,
      style: style.copyWith(
        fontFamily: 'GT Sectra Fine',
      ),
    );
  }
}
