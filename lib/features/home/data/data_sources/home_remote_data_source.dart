import 'package:storeapp/constants.dart';
import 'package:storeapp/core/utils/api_service.dart';
import 'package:storeapp/core/utils/functions/save_box_data.dart';
import 'package:storeapp/features/home/data/models/book_model/book_model.dart';
import 'package:storeapp/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
  Future<List<BookEntity>> fetchRelevanceBooks({required String category});
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiService.get(
        endPoint:
            '/volumes?q=web&filter=free-ebooks&=key=AIzaSyAWLS-b9xjMO_o6uTnn97t3STQGahE6jE0');

    List<BookEntity> books = [];
    for (var item in data['items']) {
      books.add(BookModel.fromJson(item));
    }
    saveData(books, kFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(
        endPoint:
            '/volumes?q=Programming&filter=free-ebooks&=key=AIzaSyAWLS-b9xjMO_o6uTnn97t3STQGahE6jE0&Sorting=newest');

    List<BookEntity> books = [];
    for (var item in data['items']) {
      books.add(BookModel.fromJson(item));
    }
    return books;
  }

  @override
  Future<List<BookEntity>> fetchRelevanceBooks(
      {required String category}) async {
    var data = await apiService.get(
        endPoint:
            '/volumes?q=web&filter=free-ebooks&Sorting=relevance&=key=AIzaSyAWLS-b9xjMO_o6uTnn97t3STQGahE6jE0');

    List<BookEntity> books = [];
    for (var item in data['items']) {
      books.add(BookModel.fromJson(item));
    }
    return books;
  }
}
