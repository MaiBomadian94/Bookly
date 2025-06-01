import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/search/data/repository/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/utils/api_urls.dart';
import '../../../../injections/injections.dart';

class SearchRepoImp implements SearchRepository {
  @override
  Future<Either<Failure, List<BookModel>>> searchInBook(
      {required String query}) async {
    try {
      final data = await sl<ApiService>().get(
        endPoint: ApiURL.searchBooks,
        queryParameters: {
          'q': query,
          'filter': 'free-ebooks',
        },
      );

      final List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (error) {
      if (error is DioException) {
        return Left(ServerFailure.fromDioError(error));
      } else {
        return Left(
          ServerFailure(errorMsg: error.toString()),
        );
      }
    }
  }
}
