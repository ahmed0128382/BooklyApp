import 'package:flutter/material.dart';
import 'package:storeapp/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          size: 20,
          color: Color(0xffffdd4f),
        ),
        const SizedBox(
          width: 4.3,
        ),
        Text(
          '4.8',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 3,
        ),
        const Text(
          '(2490)',
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
