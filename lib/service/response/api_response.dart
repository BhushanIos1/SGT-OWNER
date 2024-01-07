import 'package:sgt_owner/service/response/api_status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;

  ApiResponse(this.status, this.data, this.message);

  ApiResponse.lading() : status = Status.LOADING;
  ApiResponse.complete(this.data) : status = Status.COMPLETE;
  ApiResponse.error(this.message) : status = Status.ERROR;

  @override
  String toString() {
    return "Status: $status \n Message: $message \n Data: $data";
  }
}