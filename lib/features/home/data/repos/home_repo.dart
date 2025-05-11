import 'package:dartz/dartz.dart';
import 'package:storeapp/core/errors/failure.dart';
import 'package:storeapp/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchRelevanceBooks(
      {required String category});
}
