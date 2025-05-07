import 'package:bookly_app/features/home/data/repositories/home_repo.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_boks_cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../injections/injections.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit() : super(InitialFeaturedBooksStates());

  Future<void> fetchFeaturedBooks() async {
    emit(LoadingFeaturedBooksStates());

    final result = await sl<HomeRepository>().fetchFeaturedBooks();

    result.fold(
      (failure) {
        emit(FailureFeaturedBooksStates(errorMsg: failure.errorMsg));
      },
      (books) {
        emit(SuccessFeaturedBooksStates(books: books));
      },
    );
  }
}
