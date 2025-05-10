import 'package:bookly_app/features/search/data/repository/search_repo.dart';
import 'package:bookly_app/features/search/presentation/manager/search_cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../injections/injections.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit() : super(InitialSearchState());

  Future<void> searchInBooks({required String query}) async {
    emit(LoadingSearchState());

    final result = await sl<SearchRepository>().searchInBook(query: query);

    result.fold(
      (failure) {
        emit(FailureSearchState(errorMsg: failure.errorMsg));
      },
      (books) {
        emit(SuccessSearchState(books: books));
      },
    );
  }
}
