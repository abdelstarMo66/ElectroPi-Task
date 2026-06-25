import 'package:dio/dio.dart';

import 'api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error, {String? message}) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionError:
          return const ApiErrorModel(
            message: 'Connection to server failed',
            status: false,
            statusCode: 500,
          );
        case DioExceptionType.cancel:
          return const ApiErrorModel(
            message: 'Request to the server was cancelled',
            status: false,
            statusCode: 499,
          );
        case DioExceptionType.connectionTimeout:
          return const ApiErrorModel(
            message: 'Connection timeout with the server',
            status: false,
            statusCode: 408,
          );
        case DioExceptionType.unknown:
          return const ApiErrorModel(
            message:
                'Connection to the server failed due to internet connection',
            status: false,
            statusCode: 503,
          );
        case DioExceptionType.receiveTimeout:
          return const ApiErrorModel(
            message: 'Receive timeout in connection with the server',
            status: false,
            statusCode: 504,
          );
        case DioExceptionType.badResponse:
          if (error.response != null && error.response?.statusCode != null) {
            return _handleError(
              error.response?.data,
              error.response!.statusCode!,
            );
          }
          return const ApiErrorModel(
            message: 'Invalid response from the server',
            status: false,
            statusCode: 500,
          );
        case DioExceptionType.sendTimeout:
          return const ApiErrorModel(
            message: 'Send timeout in connection with the server',
            status: false,
            statusCode: 408,
          );
        default:
          return const ApiErrorModel(
            message: 'Something went wrong',
            status: false,
            statusCode: 500,
          );
      }
    } else {
      return ApiErrorModel(
        message: message ?? 'An unexpected error occurred',
        status: false,
        statusCode: 500,
      );
    }
  }

  static ApiErrorModel _handleError(
    Map<String, dynamic> error,
    int statusCode,
  ) {
    return ApiErrorModel(
      message: error.containsKey('message')
          ? error['message']
          : 'Unknown error occurred',
      statusCode: statusCode,
      status: error.containsKey('status') ? error['status'] : false,
    );
  }
}
