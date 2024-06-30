import 'package:dio/dio.dart';

abstract class Failure {
  final  String errMessage;
  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with Apiservice, try again!');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with Apiservice, try again!');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with Apiservice, try again!');

      case DioExceptionType.badCertificate:
        return ServerFailure('Incorrect certificate, try again!');

      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponce(
            dioException.response!.statusCode!, dioException.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure('Request has been canceled');

      case DioExceptionType.connectionError:
        return ServerFailure(
            'Connection error, check your network connection!');

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketExceptions')) {
          return ServerFailure('No Internet connection');
        }
        return ServerFailure('Opps Something went wrong, try agian');

      default:
        return ServerFailure('Opps Something went wrong, try agian');
    }
  }

  factory ServerFailure.fromBadResponce(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, try again later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, try again later!');
    } else {
      return ServerFailure('Opps Something went wrong, try agian');
    }
  }
}
