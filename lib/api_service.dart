// import 'package:dio/dio.dart';
// import 'package:openapi/openapi.dart';
//
// class ApiService {
//   late Dio dioClient;
//   late Openapi _openapiClient;
//   late DefaultApi _clientApi;
//
//   Openapi get openAPiClient => _openapiClient;
//   DefaultApi get clientAPi => _clientApi;
//
//   @override
//   Future<void> init() async {
//     dioClient = Dio(
//       BaseOptions(
//         baseUrl: Application.,
//       ),
//     );
//
//     // add interceptors
//
//     _openapiClient = Openapi(
//       dio: dioClient,
//       interceptors: [],
//     );
//
//     _clientApi = _openapiClient.getDefaultApi();
//   }
// }
//
// class Application {
//   String get apiBaseUrl {
//     return 'localhost:3000';
//     }
// }
//
