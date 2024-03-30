import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerBookItem extends StatelessWidget {
  const BestSellerBookItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      margin: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2 / 3,
            child: Container(
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
          ),
          const SizedBox(width: 12.0,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Harry Potter and the Goblet of Fire',
                  style: TextStyles.textStyle20.copyWith(
                    fontFamily: 'GT Sectra Fine',
                  ),
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Text('J.K. Rowling', style: TextStyles.textStyle14),
                const SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: [
                    Text(
                      '19.99\$',
                      style: TextStyles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.star_rounded,
                      color: Color(0xFFFFDD4F),
                      size: 18.0,
                    ),
                    const SizedBox(
                      width: 3.0,
                    ),
                    Text(
                      '4.8',
                      style: TextStyles.textStyle16,
                    ),
                    const SizedBox(
                      width: 3.0,
                    ),
                    Text(
                      '(2390)',
                      style: TextStyles.textStyle14,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}