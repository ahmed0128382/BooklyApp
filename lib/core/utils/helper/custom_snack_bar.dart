import 'package:flutter/material.dart';

void customSnackBar(context) {
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('the Preview link is not available')));
}
