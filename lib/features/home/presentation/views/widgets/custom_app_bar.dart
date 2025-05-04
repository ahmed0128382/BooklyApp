import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:storeapp/core/utils/app_router.dart';
import 'package:storeapp/core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });
  // final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 24,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchView);
            },
            icon: Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
