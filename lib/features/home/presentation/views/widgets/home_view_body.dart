import 'package:flutter/material.dart';
import 'package:storeapp/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:storeapp/features/home/presentation/views/widgets/custom_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomAppBr(),
        CustomListViewItem(),
      ],
    );
  }
}
