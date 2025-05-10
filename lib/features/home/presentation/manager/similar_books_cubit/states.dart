import 'package:bookly_app/features/home/data/models/book_model.dart';

abstract class SimilarBooksStates {}

class InitialSimilarBooksState extends SimilarBooksStates {}

class LoadingSimilarBooksState extends SimilarBooksStates {}

class SuccessSimilarBooksState extends SimilarBooksStates {
  final List<BookModel> books;

  SuccessSimilarBooksState({required this.books});
}

class FailureSimilarBooksState extends SimilarBooksStates {
  final String errorMsg;

  FailureSimilarBooksState({required this.errorMsg});
}
