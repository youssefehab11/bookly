import 'package:bookly/features/home/presentation/views/widgets/featured_book_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksSliverList extends StatelessWidget {
  const FeaturedBooksSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
          height: MediaQuery.sizeOf(context).height / 4,
          child: ListView.builder(
    itemBuilder: (context, index) {
      return const FeaturedBookItem();
    },
    itemCount: 10,
    physics: const BouncingScrollPhysics(),
    scrollDirection: Axis.horizontal,
          ),
        ),
    );
  }
}