import 'package:dart_application_1/classes/homework/req_resHomework.dart';
import 'package:http/http.dart' as http;

import 'package:dart_application_1/classes/req_res.dart';

void getReqRes_service() async {
  try {
    final url = 'https://reqres.in/api/users?pages=2';
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final responseBody = reqResFromJson(response.body);
      print('page: ${responseBody.page}');
      print('page: ${responseBody.perPage}');
      print('page: ${responseBody.data[2].id}');
    }
  } catch (e) {
    print(e);
  }
}

void getReqRes_homework() async {
  try {
    final url = 'https://restcountries.eu/rest/v2/alpha/col';
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final responseBody = paisFromJson(response.body);
      print(responseBody);
      print('================================');
      print('pais: ${responseBody.name}');
      print('población: ${responseBody.population}');
      print('fronteras:');
      responseBody.borders.forEach((border) => print('  $border'));
      print('lenguajes: ${responseBody.languages[0].nativeName}');
      print('latitud: ${responseBody.latlng[0]}');
      print('longitud: ${responseBody.latlng[1]}');
      print('moneda: ${responseBody.demonym}');
      print('bandera: ${responseBody.flag}');
      print('================================');
    }
  } catch (e) {
    print(e);
  }
}
