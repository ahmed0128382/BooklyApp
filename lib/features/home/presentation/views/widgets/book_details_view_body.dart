import 'package:flutter/material.dart';
import 'package:storeapp/features/home/presentation/views/widgets/book_action.dart';
import 'package:storeapp/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:storeapp/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:storeapp/features/home/presentation/views/widgets/similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Padding(
                  padding: EdgeInsets.only(top: 12.0, right: 19, left: 19),
                  child: BookAction(),
                ),
                Expanded(
                  child: SizedBox(
                    height: 38,
                  ),
                ),
                SimilarBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
