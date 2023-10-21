
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:restaurant/models/restaurant_response.dart';

import '../models/result.dart';

// Se incluye la clase ChangeNotifier
class ImagesProvider extends ChangeNotifier{
  // Properties que se agregan de pendiendo de la api.
  final String _baseUrl = 'foodbukka.herokuapp.com';
  // final String _apiKey = '';
  // final String _language = '';
  
  // Internal, private state of the Result 
  List<Result> onDisplayImages = [];

  // Configuramos el contructor
  ImagesProvider(){
    // Con la propiedad "lazy: false" cuando se crea el widget llamará al constructor y a su ver al método http.
    // print("Images-Provider inicializado"); // Probamos si esta corriendo
    getOnDisplay();
  }

  // En el pubspec se debe agregar la dependencia de https.  // Metodo para llamar el http independiente y se el agrega el async
  getOnDisplay() async {
    // Ejemplo de la página del autor
    // var url = Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'}); 
    // En el ejemplo entre llaves se agrega las propiedades.
    var url = Uri.https(_baseUrl, 'api/v1/menu');    // Await the http get response, then decode the json-formatted response.

    // Falta la validación a prueba de errores. 
    var response = await http.get(url);
    // print(response.body); // 

    final imagesResponse = RestaurantResponse.fromJson(response.body);

          // Decodificación de la data
          // final decodedData = json.decode(response.body) as Map<String, dynamic>; // Convertimos a Map
          // final Map<String, dynamic> decodedData = json.decode(response.body);
          // print(decodedData['Result']);
          // print(imagesResponse.result[0].images);

    onDisplayImages = imagesResponse.result;

    // This call tells the widget that are listening to this model to rebuild.
    notifyListeners();
  }

}