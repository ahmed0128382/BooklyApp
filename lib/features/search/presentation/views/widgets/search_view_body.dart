import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:storeapp/core/utils/assets.dart';
import 'package:storeapp/features/search/presentation/views/widgets/custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

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
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, bottom: 20),
                  child: Row(
                    children: [
                      Image.asset(
                        AssetsData.logo,
                        height: 24,
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          GoRouter.of(context).pop();
                        },
                        icon: Icon(
                          Icons.close,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                const CustomSearchTextField(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
