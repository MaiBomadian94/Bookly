import '../../../../home/data/models/book_model.dart';

abstract class SearchStates {}

class InitialSearchState extends SearchStates {}

class LoadingSearchState extends SearchStates {}

class FailureSearchState extends SearchStates {
  final String errorMsg;

  FailureSearchState({required this.errorMsg});
}

class SuccessSearchState extends SearchStates {
  final List<BookModel> books;

  SuccessSearchState({required this.books});
}
