import 'package:dartz/dartz.dart';
import 'package:storeapp/core/errors/failure.dart';

abstract class UseCase<Type, Param> {
  Future<Either<Failure, Type>> call([Param param]);
}

class NoParameter {}
