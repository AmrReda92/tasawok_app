import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  Failure(this.errorMessage);
}

class ServerError extends Failure {
  ServerError(super.errorMessage);

  factory ServerError.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerError('Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerError('Send timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerError('Receive timeout with ApiServer');

      case DioExceptionType.badResponse:
        return ServerError.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerError('Request to ApiServer was cancelled');

      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerError('No Internet Connection');
        }
        return ServerError('Unexpected Error, Please try again!');
      default:
        return ServerError('Opps There was an Error, Please try again');
    }
  }

  factory ServerError.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerError(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerError('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerError('Internal Server error, Please try later');
    } else {
      return ServerError('Opps There was an Error, Please try again');
    }
  }

}