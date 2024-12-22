import 'package:dio/dio.dart';

class ApiClient {
  final Dio _dio;

  ApiClient(String baseUrl)
      : _dio = Dio(BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
          headers: {
            'Content-Type': 'application/json',
          },
        ));

  // Public getter for the Dio instance
  Dio get dio => _dio;

  /// Perform a GET request
  Future<Response> get(String path,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      return await _dio.get(path, queryParameters: queryParameters);
    } catch (e) {
      _handleError(e);
      rethrow;
    }
  }

  /// Perform a POST request
  Future<Response> post(String path, {dynamic data}) async {
    try {
      return await _dio.post(path, data: data);
    } catch (e) {
      _handleError(e);
      rethrow;
    }
  }

  /// Perform a PUT request
  Future<Response> put(String path, {dynamic data}) async {
    try {
      return await _dio.put(path, data: data);
    } catch (e) {
      _handleError(e);
      rethrow;
    }
  }

  /// Perform a DELETE request
  Future<Response> delete(String path, {dynamic data}) async {
    try {
      return await _dio.delete(path, data: data);
    } catch (e) {
      _handleError(e);
      rethrow;
    }
  }

  /// Error handler for Dio exceptions
  void _handleError(Object error) {
    if (error is DioError) {
      switch (error.type) {
        case DioErrorType.connectionTimeout:
          print('Connection Timeout');
          break;
        case DioErrorType.receiveTimeout:
          print('Receive Timeout');
          break;
        case DioErrorType.badResponse:
          print('Bad Response: ${error.response?.data}');
          break;
        case DioErrorType.cancel:
          print('Request Cancelled');
          break;
        default:
          print('Unexpected Error: $error');
      }
    } else {
      print('Non-Dio Error: $error');
    }
  }
}
