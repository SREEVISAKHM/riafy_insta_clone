import 'package:dio/dio.dart';
import 'package:riafy_instagram_clone/api/api.dart';

import 'package:riafy_instagram_clone/model/view_response.dart';

class FetchFeed extends Api {
  Future<List<ViewResponse>> data() async {
    Response response;
    response = await get(
      'com.rstream.crafts?versionCode=40&lurl=Canvas%20painting%20ideas',
    );
    print(response.data);
    switch (response.statusCode) {
      case 200:
        return List<ViewResponse>.from(
            response.data.map((x) => ViewResponse.fromJson(x)));
      case 404:
        throw Exception('error');
      case 500:
        throw Exception('Internal Sever Error');
      default:
        throw Exception('Unkown Error');
    }
  }
}
