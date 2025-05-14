import 'package:dartz/dartz.dart';
import 'package:storeapp/core/errors/failure.dart';
import 'package:storeapp/features/home/domain/entities/book_entity.dart';
import 'package:storeapp/features/home/domain/repos/home_repo.dart';
import 'package:storeapp/core/use_cases/use_case.dart';

class FetchFeatsurdBooksUseCase extends UseCase<List<BookEntity>, NoParameter> {
  final HomeRepo homeRepo;

  FetchFeatsurdBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParameter? param]) async {
    return await homeRepo.fetchFeaturedBooks();
  }
}
