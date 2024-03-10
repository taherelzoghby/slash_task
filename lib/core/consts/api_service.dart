import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  static const url = 'https://slash-backend.onrender.com/product/';

  ApiService({required this.dio});

  //get method
  Future<Map<String, dynamic>> get({
    int pagNum = 1,
    String id = '',
  }) async {
    Response response = await dio.get("$url$id?limit=20&page=$pagNum");
    print("response : $response");
    return response.data;
  }
}
