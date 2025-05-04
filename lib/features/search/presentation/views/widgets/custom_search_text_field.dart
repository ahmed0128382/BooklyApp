import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.lightBlue,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          label: Text('search'),
          suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.search))),
    );
  }
}
