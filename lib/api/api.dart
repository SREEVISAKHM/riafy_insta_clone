import 'package:dio/dio.dart';
import 'package:riafy_instagram_clone/api/base_api.dart';
import 'package:riafy_instagram_clone/api/config.dart';

class Api extends BaseApi {
  Api() {
    BaseOptions options = BaseOptions(
      baseUrl: Config.baseUrl,
    );
    dio = Dio(options);
  }
}
