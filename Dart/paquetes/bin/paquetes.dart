// ignore_for_file: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'classes/reqres.respuesta.dart';

void main(List<String> arguments) {
  // print('Hello world: ${paquetes.calculate()}!');
  
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then((res){
    final resReqRes = ReqResRespuesta.fromJson(res.body);
    print('page: ${resReqRes.page}');
    print('per_page: ${resReqRes.perPage}');
    print('id: ${resReqRes.data[2].id}');
  });
}
