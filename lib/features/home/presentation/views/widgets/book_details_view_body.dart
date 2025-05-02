import 'package:flutter/material.dart';
import 'package:storeapp/features/home/presentation/views/widgets/book_action.dart';
import 'package:storeapp/features/home/presentation/views/widgets/book_rating.dart';
import 'package:storeapp/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:storeapp/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:storeapp/core/utils/styles.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.19),
            child: const CustomBookImage(),
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
          const Center(child: BookRating()),
          const Padding(
            padding: EdgeInsets.only(top: 12.0, right: 19, left: 19),
            child: BookAction(),
          ),
        ],
      ),
    );
  }
}
