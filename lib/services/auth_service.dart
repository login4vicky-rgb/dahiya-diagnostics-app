import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  static const String loginUrl = "http://10.0.2.2:8000/api/users/login/";

  static Future<Map<String, dynamic>> login({
    required String phone,
    required String password,
  }) async {
    final response = await http.post(
      Uri.parse(loginUrl),
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
      body: jsonEncode({"phone": phone, "password_hash": password}),
    );
    print("Status Code: ${response.statusCode}");
    print("Response Body:");
    print(response.body);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("HTTP ${response.statusCode}\n${response.body}");
    }
  }
}
