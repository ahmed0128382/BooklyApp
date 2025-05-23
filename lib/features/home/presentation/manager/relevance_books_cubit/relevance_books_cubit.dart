import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:storeapp/features/home/data/models/book_model/book_model.dart';
import 'package:storeapp/features/home/data/repos/home_repo.dart';

part 'relevance_books_state.dart';

class RelevanceBooksCubit extends Cubit<RelevanceBooksState> {
  RelevanceBooksCubit(this.homeRepo) : super(RelevanceBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchRelevanceBooks({required String category}) async {
    emit(RelevanceBooksLoading());
    var result = await homeRepo.fetchRelevanceBooks(category: category);
    result.fold((failure) {
      emit(RelevanceBooksFailure(failure.errMessage));
    }, (books) {
      emit(RelevanceBooksSuccess(books));
    });
  }
}
