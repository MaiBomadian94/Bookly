import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../home/data/models/book_model.dart';

abstract class SearchRepository {
  Future<Either<Failure, List<BookModel>>> searchInBook(
      {required String query});
}
