import 'package:dartz/dartz.dart';
import 'package:storeapp/core/errors/failure.dart';
import 'package:storeapp/features/home/domain/entities/book_entity.dart';
import 'package:storeapp/features/home/domain/repos/home_repo.dart';

class FetchFeatsurdBooksUseCase {
  final HomeRepo homeRepo;

  FetchFeatsurdBooksUseCase({required this.homeRepo});
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() {
    return homeRepo.fetchFeaturedBooks();
  }
}
