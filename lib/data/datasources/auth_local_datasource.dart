import 'dart:convert';

import 'package:flutter_ecommerce_user/data/models/response/auth_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDatasource {
  Future<void> saveAuthData(AuthResponseModel data) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('authData', data.toJson());
  }

  Future<AuthResponseModel> getAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString('authData');

    return AuthResponseModel.fromJson(data!);
  }

  Future<void> removeAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('authData');
  }

  Future<bool> isUserLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey('authData');
  }

  Future<void> reSaveAuthData(User data) async {
    final prefs = await SharedPreferences.getInstance();
    final authData = prefs.getString('authData');
    AuthResponseModel authResponseModel =
        AuthResponseModel.fromMap(jsonDecode(authData!));
    final newData = authResponseModel.copyWith(
        data: authResponseModel.data!.copyWith(user: data));
    await prefs.setString('authData', newData.toJson());
  }
}
