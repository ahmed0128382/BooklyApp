import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection time out with Api Server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.sendTimeout:
        return ServerFailure('send time out with Api Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive time out with Api Server');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection time out with Api Server');
      case DioExceptionType.cancel:
        return ServerFailure('Request to Api Server was Cancelled');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        } else {
          return ServerFailure(dioError.message!);
        }
      default:
        return ServerFailure('unExpected error, please try agian later!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your Request Not Found , please try later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, please try agian later!');
    } else {
      return ServerFailure('Opps there was an error, please try agian later!');
    }
  }
}
