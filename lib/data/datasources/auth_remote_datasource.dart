import 'dart:convert';

import 'package:flutter_ecommerce_user/core/constants/variables.dart';
import 'package:flutter_ecommerce_user/data/datasources/auth_local_datasource.dart';
import 'package:flutter_ecommerce_user/data/models/response/auth_response_model.dart';
import 'package:flutter_ecommerce_user/data/models/response/register_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDatasource {
  Future<Either<String, RegisterResponseModel>> register(
      String name, String email, String password) async {
    final url = Uri.parse('${Variables.baseUrl}/api/buyer/register');
    final header = {
      'Accept': 'application/json',
      'Content-type': 'application/json',
    };
    final response = await http.post(
      url,
      headers: header,
      body: jsonEncode({
        'name': name,
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 201) {
      return Right(RegisterResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to register');
    }
  }

  Future<Either<String, AuthResponseModel>> login(
      String email, String password) async {
    final url = Uri.parse('${Variables.baseUrl}/api/login');
    final header = {
      'Accept': 'application/json',
      'Content-type': 'application/json',
    };
    final response = await http.post(url,
        headers: header,
        body: jsonEncode({
          'email': email,
          'password': password,
        }));

    if (response.statusCode == 200) {
      return Right(AuthResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to login');
    }
  }

  Future<Either<String, String>> logout() async {
    final url = Uri.parse('${Variables.baseUrl}/api/logout');
    final authData = await AuthLocalDatasource().getAuthData();
    final header = {
      'Accept': 'application/json',
      'Content-type': 'application/json',
      'Authorization': 'Bearer ${authData.data!.token}'
    };

    final response = await http.post(url, headers: header);
    if (response.statusCode == 200) {
      return const Right('Success');
    } else {
      return Left(response.body);
    }
  }

  // update fcm token
  Future<Either<String, String>> updateFcmToken(String fcmToken) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/update-fcm-token');
    final header = {
      'Accept': 'application/json',
      'Content-type': 'application/json',
      'Authorization': 'Bearer ${authData.data!.token}'
    };
    final response = await http.put(
      url,
      headers: header,
      body: jsonEncode(
        {'fcm_token': fcmToken},
      ),
    );
    
    if (response.statusCode == 200) {
      return const Right('Success');
    } else {
      return Left(response.body);
    }
  }
}
