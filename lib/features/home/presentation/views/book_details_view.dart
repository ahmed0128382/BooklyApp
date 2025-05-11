import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/features/home/data/models/book_model/book_model.dart';
import 'package:storeapp/features/home/presentation/manager/relevance_books_cubit/relevance_books_cubit.dart';
import 'package:storeapp/features/home/presentation/views/widgets/book_details_view_body.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.book});
  final BookModel book;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<RelevanceBooksCubit>(context).fetchRelevanceBooks(
        category: widget.book.volumeInfo.categories?[0] ?? '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsViewBody(
        book: widget.book,
      ),
    );
  }
}
