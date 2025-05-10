import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl,
          placeholder: (context, url) =>
              const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.question_mark),
        ),
      ),
      // child: Container(
      //   padding: const EdgeInsets.all(0),
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(16),
      //     image: DecorationImage(
      //       image: NetworkImage(
      //         imageUrl,
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
