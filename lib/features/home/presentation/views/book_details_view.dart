import 'package:flutter/material.dart';
import 'package:storeapp/features/home/presentation/views/widgets/book_details_view_body.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsViewBody(),
    );
  }
}
