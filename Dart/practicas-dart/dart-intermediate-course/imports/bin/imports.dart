// import 'package:imports/imports.dart' as mycode;
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  // print('Hello world: ${mycode.calculate()}!');
  // mycode.sayHello();
  // String myValue = 'Hello World';
  // List eBytes = utf8.encode(myValue);
  // String eByteConvert = eBytes.toString();
  // String encode = Base64Encoder(eByteConvert);

  // List intToString = utf8.encode(eByteConvert);

  var url = Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }



}
