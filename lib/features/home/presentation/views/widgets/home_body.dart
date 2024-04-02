import 'package:bookly/features/home/presentation/views/widgets/best_seller_list.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_title.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_list.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomAppBarSliver(),
        FeaturedBooksSliverList(),
        BestSellerSliverText(),
        BestSellerSliverList()
      ],
    );
  }
}


