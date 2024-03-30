import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerSliverText extends StatelessWidget {
  const BestSellerSliverText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 8.0, right: 8.0, top: 40.0, bottom: 10.0),
        child: Text(
          'Best Seller',
          style: TextStyles.textStyle20,
        ),
      ),
    );
  }
}