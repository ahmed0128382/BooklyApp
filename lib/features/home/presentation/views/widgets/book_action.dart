import 'package:flutter/material.dart';
import 'package:storeapp/core/widgets/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButton(
            text: 'Free',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          ),
        ),
        Expanded(
          child: CustomButton(
            text: 'Free Preview',
            backgroundColor: Color(0xffef8262),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
          ),
        ),
      ],
    );
  }
}
