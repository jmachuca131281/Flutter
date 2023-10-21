
import 'dart:convert';

class Result {
    Result({
        required this.images,
        required this.id,
        required this.menuname,
        required this.description,
        required this.v,
    });

    List<String> images;
    String id;
    String menuname;
    String description;
    int v;

    factory Result.fromJson(String str) => Result.fromMap(json.decode(str));

    factory Result.fromMap(Map<String, dynamic> json) => Result(
        images: List<String>.from(json["images"].map((x) => x)),
        id: json["_id"],
        menuname: json["menuname"],
        description: json["description"],
        v: json["__v"],
    );

}
