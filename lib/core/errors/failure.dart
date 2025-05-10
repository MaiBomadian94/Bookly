import 'package:dio/dio.dart';

class Failure {
  final String errorMsg;

  const Failure({required this.errorMsg});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMsg});

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMsg: 'Connection timeout with Api Server');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMsg: 'Send timeout with Api Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMsg: 'Receive timeout with Api Server');
      case DioExceptionType.badCertificate:
        return ServerFailure(
            errorMsg:
                "Cannot verify server identity. Please check your internet connection or try again later.");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponseError(
            dioError.response!.statusCode!, dioError.response);
      case DioExceptionType.cancel:
        return ServerFailure(errorMsg: 'Request was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure(
            errorMsg: "Oops! You're offline. Try again when you're connected.");
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure(errorMsg: "No Internet Connection");
        } else {
          return ServerFailure(
              errorMsg: 'Unexpected Error, Please try again later !');
        }
      default:
        return ServerFailure(
            errorMsg: 'Oops  something went wrong, Please try again later !');
    }
  }

  factory ServerFailure.fromResponseError(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errorMsg: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          errorMsg: 'Your Request not found, Please try again later !');
    } else if (statusCode == 500) {
      return ServerFailure(
          errorMsg: 'Internal Server error, Please try again !');
    } else {
      return ServerFailure(
          errorMsg: 'Oops  something went wrong, Please try again later !');
    }
  }
}
