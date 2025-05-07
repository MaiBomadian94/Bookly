import 'package:bookly_app/features/home/data/models/book_model.dart';

abstract class FeaturedBooksStates {}

class InitialFeaturedBooksStates extends FeaturedBooksStates {}

class LoadingFeaturedBooksStates extends FeaturedBooksStates {}

class SuccessFeaturedBooksStates extends FeaturedBooksStates {
  final List<BookModel> books;

  SuccessFeaturedBooksStates({required this.books});
}

class FailureFeaturedBooksStates extends FeaturedBooksStates {
  final String errorMsg;

  FailureFeaturedBooksStates({required this.errorMsg});

}
