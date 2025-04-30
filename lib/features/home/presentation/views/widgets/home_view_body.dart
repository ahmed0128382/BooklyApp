import 'package:flutter/material.dart';
import 'package:storeapp/core/utils/styles.dart';
import 'package:storeapp/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:storeapp/features/home/presentation/views/widgets/featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CustomAppBr(),
          const FeaturedBooksListView(),
          const SizedBox(
            height: 42,
          ),
          Text(
            'Best Seller',
            //textAlign: TextAlign.left,
            style: Styles.titleMedium,
          ),
        ],
      ),
    );
  }
}
