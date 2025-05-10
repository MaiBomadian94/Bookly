import 'package:bookly_app/features/home/data/repositories/home_repo.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../injections/injections.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates> {
  NewestBooksCubit() : super(InitialNewestBooksStates());

  Future<void> fetchNewestBooks() async {
    emit(LoadingNewestBooksStates());

    final result = await sl<HomeRepository>().fetchNewestBooks();

    result.fold(
      (failure) {
        emit(FailureNewestBooksStates(errorMsg: failure.errorMsg));
      },
      (books) {
        emit(SuccessNewestBooksStates(books: books));
      },
    );
  }
}
