import 'package:dio/dio.dart';
import 'package:riafy_instagram_clone/api/base_api.dart';
import 'package:riafy_instagram_clone/api/config.dart';

class Api2 extends BaseApi {
  Api2() {
    BaseOptions options = BaseOptions(
      baseUrl: Config.baseUrl2,
    );
    dio = Dio(options);
  }
}
