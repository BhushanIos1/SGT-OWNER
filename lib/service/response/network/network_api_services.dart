import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:sgt_owner/service/app_exceptions.dart';
import 'package:sgt_owner/service/response/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    dynamic responseJson;

    EasyLoading.show();

    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      EasyLoading.dismiss();
      throw InternetException('');
    } on RequestTimeOutException {
      EasyLoading.dismiss();
      throw RequestTimeOutException('');
    }
    return responseJson;
  }

  @override
  Future postApi(var data, String url) async {
    if (kDebugMode) {
      print(data);
    }
    dynamic responseJson;

    EasyLoading.show();

    try {
      final response = await http
          .post(Uri.parse(url), body: jsonEncode(data))
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      EasyLoading.dismiss();
      throw InternetException('');
    } on RequestTimeOutException {
      EasyLoading.dismiss();
      throw RequestTimeOutException('');
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw InvalidMethodException;

      default:
        throw FetchDataException(
            "Error occured while communicating with server ${response.statusCode.toString()}");
    }
  }
}
