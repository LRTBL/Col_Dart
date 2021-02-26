// To parse this JSON data, do
//
//     final Support = SupportFromJson(jsonString);

import 'dart:convert';

Support SupportFromJson(String str) => Support.fromJson(json.decode(str));

String SupportToJson(Support data) => json.encode(data.toJson());

class Support {
  Support({
    this.url,
    this.text,
  });

  String url;
  String text;

  factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "text": text,
      };
}
