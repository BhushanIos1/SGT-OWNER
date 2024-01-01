import 'package:get/get.dart';

abstract class HttpService {
  void init();

  Future<Response> getRequest(String url);

}
