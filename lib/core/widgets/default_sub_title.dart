import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class DefaultSubTitle extends StatelessWidget {
  const DefaultSubTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 8.0, right: 8.0, top: 40.0, bottom: 10.0),
      child: Text(
        title,
        style: TextStyles.textStyle20,
      ),
    );
  }
}
