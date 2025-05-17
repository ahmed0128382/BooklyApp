import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:storeapp/core/errors/failure.dart';
import 'package:storeapp/features/home/data/data_sources/home_local_data_source.dart';
import 'package:storeapp/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:storeapp/features/home/data/repos/home_repo_c.dart';
import 'package:storeapp/features/home/domain/entities/book_entity.dart';

class HomeRepoImpl implements HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchFeaturedBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchFeaturedBooks();
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure("errMessage"));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchNewestBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchNewestBooks();
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure("errMessage"));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchRelevanceBooks(
      {required String category}) async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchRelevanceBooks(category: category);
      if (books.isNotEmpty) {
        return right(books);
      }
      books =
          await homeRemoteDataSource.fetchRelevanceBooks(category: category);
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure("errMessage"));
      }
    }
  }
}
