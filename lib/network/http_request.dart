import 'package:dio/dio.dart';
import 'http_config.dart';

class HttpRequest {
  //创建dio实例
  static BaseOptions baseOptions =
      BaseOptions(baseUrl: BASE_URL, connectTimeout: TIMEOUT);
  static final dio = Dio(baseOptions);
  static Future request(String url,
      {String method = "get", Map<String, dynamic> params}) async {
    //发送网络请求
    Options options = Options(method: method);
    try {
      final result =
          await dio.request(url, queryParameters: params, options: options);
      return result;
    } on DioError catch (err) {
      throw err;
    }
  }
}
