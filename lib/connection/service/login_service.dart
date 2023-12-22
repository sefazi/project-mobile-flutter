import 'package:dio/dio.dart';
import 'package:project_mobile_flutter/connection/api/client.dart';
import 'package:project_mobile_flutter/model/user_model.dart';

class LoginService {
  Future<UserResponse> checkUser(String email, password) async {
    try {
      Map<String, dynamic> data = {'email': email, 'password': password};
      final Response response = await Api()
          .post('users/check?email=${email}&password=${password}', data);
      UserResponse item = UserResponse.fromJson(response.data);
      return item;
    } catch (error) {
      throw Exception('Failed to fetch items: $error');
    }
  }
}
