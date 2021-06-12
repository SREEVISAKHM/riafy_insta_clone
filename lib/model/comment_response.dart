// To parse this JSON data, do
//
//     final commentResponse = commentResponseFromJson(jsonString);

import 'dart:convert';

List<CommentResponse> commentResponseFromJson(String str) =>
    List<CommentResponse>.from(
        json.decode(str).map((x) => CommentResponse.fromJson(x)));

String commentResponseToJson(List<CommentResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CommentResponse {
  CommentResponse({
    required this.username,
    required this.comments,
  });

  String username;
  String comments;

  factory CommentResponse.fromJson(Map<String, dynamic> json) =>
      CommentResponse(
        username: json["username"],
        comments: json["comments"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "comments": comments,
      };
}
