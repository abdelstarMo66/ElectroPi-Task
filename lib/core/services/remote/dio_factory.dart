import 'package:dio/dio.dart';
import 'package:mzady/core/di/dependency_injection.dart';
import 'package:mzady/core/services/local/secure_storage_manager.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../routing/go_router_service.dart';
import '../../routing/routes.dart';
import '../../utils/methods_manager.dart';
import '../local/secure_utils.dart';

class DioFactory {
  DioFactory._();

  static Dio? _dio;

  static Future<Dio> getDio() async {
    if (_dio == null) {
      _dio = Dio()
        ..options.connectTimeout = const Duration(seconds: 45)
        ..options.receiveTimeout = const Duration(seconds: 45);

      await _addHeaders();
      _addAuthInterceptor();
      _addErrorInterceptor();
      _addLoggerInterceptor();
    }
    return _dio!;
  }

  static Future<void> _addHeaders() async {
    _dio?.options.headers = {
      'lang': (await MethodsManager.getLocate()).languageCode,
      'Accept': 'application/json',
    };
  }

  static void _addAuthInterceptor() {
    _dio?.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await getIt<SecureMethods>().getNullableToken();
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          return handler.next(options);
        },
      ),
    );
  }

  static void _addErrorInterceptor() {
    _dio?.interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) async {
          if (error.response?.statusCode == 401) {
            await getIt<SecureStorageManager>().clearAll();
            GoRouterService.router.go(Routes.login);
          }
          return handler.next(error);
        },
      ),
    );
  }

  static void _addLoggerInterceptor() {
    _dio?.interceptors.add(
      PrettyDioLogger(requestBody: true, requestHeader: true),
    );
  }
}
