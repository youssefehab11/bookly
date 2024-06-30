import 'package:flutter/material.dart';

class DefaultBookImage extends StatelessWidget {
  const DefaultBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.2 / 3,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: const DecorationImage(
            image: NetworkImage(
              'https://i.pinimg.com/564x/95/fd/47/95fd47188d3471e804e52a80b139e623.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
