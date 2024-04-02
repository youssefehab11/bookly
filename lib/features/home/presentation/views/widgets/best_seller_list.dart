import 'package:bookly/features/home/presentation/views/widgets/best_seller_book_item.dart';
import 'package:flutter/material.dart';

class BestSellerSliverList extends StatelessWidget {
  const BestSellerSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => const BestSellerBookItem(),
      itemCount: 10,
    );
  }
}