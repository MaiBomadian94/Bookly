import 'package:bookly_app/features/home/data/repositories/home_repo.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../injections/injections.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksStates> {
  SimilarBooksCubit() : super(InitialSimilarBooksState());

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(LoadingSimilarBooksState());
    final result =
        await sl<HomeRepository>().fetchSimilarBooks(category: category);

    result.fold(
      (failure) {
        emit(FailureSimilarBooksState(errorMsg: failure.errorMsg));
      },
      (books) {
        emit(SuccessSimilarBooksState(books: books));
      },
    );
  }
}
