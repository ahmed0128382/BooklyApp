import 'package:dartz/dartz.dart';
import 'package:storeapp/core/errors/failure.dart';
import 'package:storeapp/core/use_cases/no_param_use_case.dart';
import 'package:storeapp/features/home/domain/entities/book_entity.dart';
import 'package:storeapp/features/home/domain/repos/home_repo.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>> {
  final HomeRepo homeRepo;

  FetchNewestBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntity>>> call() async {
    return await homeRepo.fetchNewestBooks();
  }
}
