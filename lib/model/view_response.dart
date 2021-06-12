// To parse this JSON data, do
//
//     final viewResponse = viewResponseFromJson(jsonString);

import 'dart:convert';

class ViewResponse {
  ViewResponse({
    required this.id,
    this.channelname,
    required this.title,
    required this.highThumbnail,
    this.lowThumbnail,
    this.mediumThumbnail,
    this.tags,
  });

  String id;
  String? channelname;
  String title;
  String highThumbnail;
  String? lowThumbnail;
  String? mediumThumbnail;
  List<dynamic>? tags;

  factory ViewResponse.fromRawJson(String str) =>
      ViewResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());
  factory ViewResponse.fromJson(Map<String, dynamic> json) => ViewResponse(
        id: json["id"],
        channelname: json["channelname"],
        title: json["title"],
        highThumbnail: json["high thumbnail"],
        lowThumbnail: json["low thumbnail"],
        mediumThumbnail: json["medium thumbnail"],
        tags: List<dynamic>.from(json["tags"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "channelname": channelname,
        "title": title,
        "high thumbnail": highThumbnail,
        "low thumbnail": lowThumbnail,
        "medium thumbnail": mediumThumbnail,
        "tags": List<dynamic>.from(tags!.map((x) => x)),
      };
}
