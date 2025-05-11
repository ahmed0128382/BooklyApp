import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:storeapp/core/utils/styles.dart';
import 'package:storeapp/features/home/data/models/book_model/book_model.dart';
import 'package:storeapp/features/home/presentation/views/widgets/book_rating.dart';
import 'package:storeapp/features/home/presentation/views/widgets/custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
    required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.19),
          child: CustomBookImage(
            imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 3),
            child: Text(
              book.volumeInfo.title ?? '',
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.spectral(textStyle: Styles.textStyle30),
            ),
          ),
        ),
        Text(
          book.volumeInfo.authors?[0] ?? '',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle18,
        ),
        const SizedBox(
          height: 6,
        ),
        Center(
            child: BookRating(
          rating: book.volumeInfo.averageRating ?? 0,
          ratingCount: book.volumeInfo.ratingsCount ?? 0,
        )),
      ],
    );
  }
}
