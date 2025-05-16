import 'package:storeapp/features/home/domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewestBooks();
  List<BookEntity> fetchRelevanceBooks({required String category});
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks() {
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchRelevanceBooks({required String category}) {
    throw UnimplementedError();
  }
}
