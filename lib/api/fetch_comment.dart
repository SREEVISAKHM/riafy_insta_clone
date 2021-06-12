import 'package:dio/dio.dart';
import 'package:riafy_instagram_clone/api/api2.dart';
import 'package:riafy_instagram_clone/model/comment_response.dart';

class FetchComment extends Api2 {
  Future<List<CommentResponse>> comment() async {
    Response response;
    response = await get(
      'test.php',
    );
    print(response.data);
    switch (response.statusCode) {
      case 200:
        return commentResponseFromJson(response.data);
      case 404:
        throw Exception('error');
      case 500:
        throw Exception('Internal Sever Error');
      default:
        throw Exception('Unkown Error');
    }
  }
}
