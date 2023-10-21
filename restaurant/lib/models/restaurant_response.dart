
import 'dart:convert';

import 'result.dart';

class RestaurantResponse {

    RestaurantResponse({
        required this.totalMenu,
        required this.result,
    });

    // Propiedades de la clase.
    int totalMenu;
    List<Result> result;

    factory RestaurantResponse.fromJson(String str) => RestaurantResponse.fromMap(json.decode(str));

    factory RestaurantResponse.fromMap(Map<String, dynamic> json) => RestaurantResponse(
        totalMenu: json["Total Menu"],
        result: List<Result>.from(json["Result"].map((x) => Result.fromMap(x))),
    );

    // Se utiliza cuando queremos enviar algo por http
    // Map<String, dynamic> toMap() => {
    //     "Total Menu": totalMenu,
    //     "Result": List<dynamic>.from(result.map((x) => x.toMap())),
    // };
}
