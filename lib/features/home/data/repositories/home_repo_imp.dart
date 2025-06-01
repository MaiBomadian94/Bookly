import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/core/utils/api_urls.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/data/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../injections/injections.dart';

class HomeRepoImpl implements HomeRepository {
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      final data = await sl<ApiService>().get(
        endPoint: ApiURL.fetchNewestBooks,
      );

      final List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return Right(books);
    } catch (error) {
      if (error is DioException) {
        return Left(
          ServerFailure.fromDioError(error),
        );
      }
      return Left(
        ServerFailure(
          errorMsg: error.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      final data = await sl<ApiService>().get(
        endPoint: ApiURL.fetchFeaturedBooks,
      );

      final List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return Right(books);
    } catch (error) {
      if (error is DioException) {
        return Left(
          ServerFailure.fromDioError(error),
        );
      }
      return Left(
        ServerFailure(
          errorMsg: error.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      final data = await sl<ApiService>().get(
        endPoint: ApiURL.fetchSimilarBooks,
      );

      final List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return Right(books);
    } catch (error) {
      if (error is DioException) {
        return Left(
          ServerFailure.fromDioError(error),
        );
      }
      return Left(
        ServerFailure(
          errorMsg: error.toString(),
        ),
      );
    }
  }
}
