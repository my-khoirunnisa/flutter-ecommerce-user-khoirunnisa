import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_ecommerce_user/core/constants/variables.dart';
import 'package:flutter_ecommerce_user/data/datasources/auth_local_datasource.dart';
import 'package:flutter_ecommerce_user/data/models/request/order_request_model.dart';
import 'package:flutter_ecommerce_user/data/models/response/history_response_model.dart';
import 'package:flutter_ecommerce_user/data/models/response/order_detail_response_model.dart';
import 'package:flutter_ecommerce_user/data/models/response/order_response_model.dart';
import 'package:http/http.dart' as http;

class OrderRemoteDatasource {
  Future<Either<String, OrderResponseModel>> createOrder(
      OrderRequestModel data) async {
    final url = Uri.parse('${Variables.baseUrl}/api/buyer/orders');
    final authData = await AuthLocalDatasource().getAuthData();
    final header = {
      'Accept': 'application/json',
      'Content-type': 'application/json',
      'Authorization': 'Bearer ${authData.data!.token}',
    };
    final response = await http.post(
      url,
      headers: header,
      body: data.toJson(),
    );
    if (response.statusCode == 201) {
      return Right(OrderResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to create order');
    }
  }

  Future<Either<String, String>> getStatus(int id) async {
    final url = Uri.parse('${Variables.baseUrl}/api/buyer/orders/$id/status');
    final authData = await AuthLocalDatasource().getAuthData();
    final header = {
      'Accept': 'application/json',
      'Content-type': 'application/json',
      'Authorization': 'Bearer ${authData.data!.token}',
    };
    final response = await http.get(url, headers: header);
    if (response.statusCode == 200) {
      return Right(jsonDecode(response.body)['status']);
    } else {
      return const Left('Failed to get order status');
    }
  }

  Future<Either<String, HistoryResponseModel>> getOrderHistory() async {
    final url = Uri.parse('${Variables.baseUrl}/api/buyer/histories');
    final authData = await AuthLocalDatasource().getAuthData();
    final header = {
      'Accept': 'application/json',
      'Content-type': 'application/json',
      'Authorization': 'Bearer ${authData.data!.token}',
    };
    final response = await http.get(url, headers: header);
    if (response.statusCode == 200) {
      return Right(HistoryResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to get order history');
    }
  }

  Future<Either<String, OrderDetailResponseModel>> getOrderDetail(
      int id) async {
    final url = Uri.parse('${Variables.baseUrl}/api/buyer/orders/$id');
    final authData = await AuthLocalDatasource().getAuthData();
    final header = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ${authData.data!.token}',
    };

    final response = await http.get(
      url,
      headers: header,
    );

    if (response.statusCode == 200) {
      return Right(OrderDetailResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to get order detail');
    }
  }
}
