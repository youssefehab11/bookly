import 'package:bookly/core/widgets/default_sub_title.dart';
import 'package:flutter/material.dart';

class BestSellerSliverText extends StatelessWidget {
  const BestSellerSliverText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: DefaultSubTitle(
        title: 'Best Seller',
      ),
    );
  }
}
