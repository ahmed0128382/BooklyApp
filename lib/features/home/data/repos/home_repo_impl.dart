import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:storeapp/core/errors/failure.dart';
import 'package:storeapp/core/utils/api_service.dart';
import 'package:storeapp/features/home/data/models/book_model/book_model.dart';
import 'package:storeapp/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              '/volumes?q=Programming&filter=free-ebooks&=key=AIzaSyAWLS-b9xjMO_o6uTnn97t3STQGahE6jE0&Sorting=newest');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
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
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              '/volumes?q=web&filter=free-ebooks&=key=AIzaSyAWLS-b9xjMO_o6uTnn97t3STQGahE6jE0');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
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
