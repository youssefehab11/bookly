import 'package:bookly/core/widgets/default_sub_title.dart';
import 'package:flutter/material.dart';

class NewestBooksSliverText extends StatelessWidget {
  const NewestBooksSliverText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: DefaultSubTitle(
        title: 'Newest Books',
      ),
    );
  }
}
