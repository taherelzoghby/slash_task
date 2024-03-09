import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  static const url = 'https://slash-backend.onrender.com/product/';

  ApiService({required this.dio});

  //get method
  Future<Map<String, dynamic>> get({
    String endPoint = '',
  }) async {
    Response response = await dio.get("$url$endPoint");
    print("response : $response");
    return response.data;
  }
}
