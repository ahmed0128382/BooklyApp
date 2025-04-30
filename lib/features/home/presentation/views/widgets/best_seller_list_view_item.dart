import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:storeapp/core/utils/assets.dart';
import 'package:storeapp/core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage(
                    AssetsData.testImage,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Text(
                    'Harry Potter and the Goblit of Fire ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        GoogleFonts.giveYouGlory(textStyle: Styles.textStyle20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text(
                  'J.K. Rowling ',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle14,
                ),
              ),
              Row(
                children: [
                  Text(
                    '19.99 €',
                    style: Styles.textStyle20
                        .copyWith(fontWeight: FontWeight.w800),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
