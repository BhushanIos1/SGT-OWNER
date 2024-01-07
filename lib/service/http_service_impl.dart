
import 'package:sgt_owner/service/api_urls.dart';
import 'package:sgt_owner/service/http_service.dart';
/*
class HttpsServiceImpl implements HttpService {
  late Dio _dio;

  @override
  Future<Response> getRequest(String url) async {
    Response response;

    try {
      response = await _dio.get(url);
    } on DioException catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  initializeInterceptors() {
    _dio.interceptors.add(InterceptorsWrapper(
      onError: (error, errorInterceptorHandler) {
        print(error.message);
      },
      onRequest: (request, requestInterceptorHandler) {
        print("${request.method} | ${request.path}");
      },
      onResponse: (response, responseInterceptorHandler) {
        print(
            "${response.statusCode} | ${response.statusMessage} | ${response.data}");
      },
    ));
  }

  @override
  void init() {
    _dio = Dio(BaseOptions(
        baseUrl: Apis.baseUrl, headers: {"Authorization": "Bearer "}));
    initializeInterceptors();
  }
}*/