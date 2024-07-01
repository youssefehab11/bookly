import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ErrorText extends StatelessWidget {
  const ErrorText(this.errMessage, {super.key});
  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Text(
      errMessage,
      style: TextStyles.textStyle16,
    );
  }
}
