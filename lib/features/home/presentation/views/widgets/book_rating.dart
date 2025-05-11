import 'package:flutter/material.dart';
import 'package:storeapp/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.rating,
    required this.ratingCount,
  });
  final dynamic rating;
  final int ratingCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          size: 20,
          color: Color.fromARGB(255, 174, 176, 43),
        ),
        const SizedBox(
          width: 4.3,
        ),
        Text(
          '$rating',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          '($ratingCount)',
          style: Styles.textStyle14,
        ),
        const SizedBox(
          width: 6,
        ),
      ],
    );
  }
}
