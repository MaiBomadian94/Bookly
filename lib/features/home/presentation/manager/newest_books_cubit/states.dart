import 'package:bookly_app/features/home/data/models/book_model.dart';

abstract class NewestBooksStates {}

class InitialNewestBooksStates extends NewestBooksStates {}

class LoadingNewestBooksStates extends NewestBooksStates {}

class SuccessNewestBooksStates extends NewestBooksStates {
  final List<BookModel> books;

  SuccessNewestBooksStates({required this.books});
}

class FailureNewestBooksStates extends NewestBooksStates {
  final String errorMsg;

  FailureNewestBooksStates({required this.errorMsg});

}
