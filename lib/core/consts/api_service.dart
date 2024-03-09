import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  static const url = 'https://project2.amit-learning.com/api';

  ApiService({required this.dio});

  //get method
  Future<Map<String, dynamic>> get({
    required String path,
  }) async {
    Response response = await dio.get("$url$path");
    print("response : ----$response");
    return response.data;
  }
}
