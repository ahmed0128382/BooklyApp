import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:storeapp/core/utils/styles.dart';
import 'package:storeapp/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:storeapp/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:storeapp/features/home/presentation/views/widgets/featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const CustomAppBar(),
                const FeaturedBooksListView(
                  heightRatio: 0.35,
                ),
                const SizedBox(
                  height: 22,
                ),
                Text(
                  'Best Seller',
                  //textAlign: TextAlign.left,
                  style: GoogleFonts.gabriela(textStyle: Styles.titleMedium),
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: const BestSellerListView(),
          )
        ],
      ),
    );
  }
}
