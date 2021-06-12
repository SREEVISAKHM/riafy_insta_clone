import 'package:flutter/cupertino.dart';
import 'package:riafy_instagram_clone/api/fetch_comment.dart';
import 'package:riafy_instagram_clone/api/fetch_feed.dart';
import 'package:riafy_instagram_clone/model/comment_response.dart';
import 'package:riafy_instagram_clone/model/view_response.dart';

class ViewState extends ChangeNotifier {
  late List<ViewResponse> viewResponse;
  late List<CommentResponse> commentResponse;
  Future<List<ViewResponse>?> loadHomeData() async {
    try {
      print('1');
      // isHomeDataLoading = true;
      viewResponse = await FetchFeed().data();
      // isHomeDataLoading = false;
      print(viewResponse.length);
      return viewResponse;
    } catch (e) {
      print(e);
      // isHomeDataLoading = false;
      return null;
    }
  }

  Future<List<CommentResponse>?> loadComment() async {
    try {
      print('2');
      // isHomeDataLoading = true;
      commentResponse = await FetchComment().comment();
      // isHomeDataLoading = false;
      print(commentResponse.length);
      return commentResponse;
    } catch (e) {
      print(e);
      // isHomeDataLoading = false;
      return null;
    }
  }
}
