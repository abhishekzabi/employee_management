// import 'dart:convert';
// import 'package:employee_management/models/userdatamodel.dart';
// import 'package:http/http.dart' as http;

// Future<List<UserModel>> fetchUsers() async {
//   final response = await http.get(Uri.parse('https://randomuser.me/api/?results=30'));

//   if (response.statusCode == 200) {
//     List<dynamic> jsonData = jsonDecode(response.body)['results'];
//     return jsonData.map((json) => UserModel.fromJson(json)).toList();
//   } else {
//     throw Exception('Failed to load users');
//   }
// }
 // services/api_service.dart
import 'dart:convert';
import 'package:employee_management/models/userdatamodel.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<UserModel>> fetchUsers() async {
    final response = await http.get(Uri.parse("https://669b3f09276e45187d34eb4e.mockapi.io/api/v1/employee"));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => UserModel.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
