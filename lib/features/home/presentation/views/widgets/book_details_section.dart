import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:storeapp/core/utils/styles.dart';
import 'package:storeapp/features/home/presentation/views/widgets/book_rating.dart';
import 'package:storeapp/features/home/presentation/views/widgets/custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.19),
          child: const CustomBookImage(
            imageUrl:
                'https://t3.ftcdn.net/jpg/05/67/83/54/360_F_567835419_h5ShRnzJ4asY3NWWZspqoDO5hLPUVdVG.jpg',
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 3),
            child: Text(
              'Harry Potter and the Goblit of Fire ',
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.spectral(textStyle: Styles.textStyle30),
            ),
          ),
        ),
        const Text(
          'J.K. Rowling ',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle18,
        ),
        const SizedBox(
          height: 6,
        ),
        Center(
            child: BookRating(
          rating: 3,
          ratingCount: 4,
        )),
      ],
    );
  }
}
