import 'package:bookly/core/widgets/default_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBook extends StatelessWidget {
  const SimilarBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height / 5,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const DefaultBookImage('https://i.pinimg.com/564x/95/fd/47/95fd47188d3471e804e52a80b139e623.jpg');
        },
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
