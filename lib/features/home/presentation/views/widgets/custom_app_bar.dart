import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBarSliver extends StatelessWidget {
  const CustomAppBarSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 40.0),
        child: Row(
          children: [
            Image.asset(
              AssetsImages.logo,
              height: 18.0,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
