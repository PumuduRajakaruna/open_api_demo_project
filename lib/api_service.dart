import 'package:dio/dio.dart';
import 'package:openapi/openapi.dart';

class ApiService {
  late Dio dioClient;
  late Openapi _openapiClient;
  late DefaultApi _clientApi;

  Openapi get openAPiClient => _openapiClient;
  DefaultApi get clientAPi => _clientApi;

  @override
  Future<void> init() async {
    dioClient = Dio();
    _openapiClient = Openapi(
      dio: dioClient,
    );

    _clientApi = _openapiClient.getDefaultApi();
  }
}
