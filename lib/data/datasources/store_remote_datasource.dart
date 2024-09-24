// ignore: file_names
import 'package:dartz/dartz.dart';
import 'package:flutter_ecommerce_user/data/models/response/list_product_response_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_ecommerce_user/core/constants/variables.dart';
import 'package:flutter_ecommerce_user/data/datasources/auth_local_datasource.dart';
import 'package:flutter_ecommerce_user/data/models/response/list_store_response_model.dart';

class StoreRemoteDatasource {
  Future<Either<String, ListStoreResponseModel>> getStores() async {
    final url = Uri.parse('${Variables.baseUrl}/api/buyer/stores');
    final authData = await AuthLocalDatasource().getAuthData();
    final header = {
      'Accept': 'application/json',
      'Content-type': 'application/json',
      'Accept-Encoding': 'gzip, deflate, br',
      'Authorization': 'Bearer ${authData.data!.token}',
    };
    final response = await http.get(url, headers: header);

    if (response.statusCode == 200) {
      return Right(ListStoreResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to get stores');
    }
  }

  Future<Either<String, ListStoreResponseModel>>
      getLiveStreamingStores() async {
    final url =
        Uri.parse('${Variables.baseUrl}/api/buyer/stores/livestreaming');
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
      return Right(ListStoreResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to get stores');
    }
  }

  Future<Either<String, ListProductResponseModel>> getProducts(
      int storeId) async {
    final url =
        Uri.parse('${Variables.baseUrl}/api/buyer/stores/$storeId/products');
    final authData = await AuthLocalDatasource().getAuthData();
    final header = {
      'Accept': 'application/json',
      'Content-type': 'application/json',
      'Accept-Encoding': 'gzip, deflate, br',
      'Authorization': 'Bearer ${authData.data!.token}',
    };
    final response = await http.get(url, headers: header);

    if (response.statusCode == 200) {
      return Right(ListProductResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to get products');
    }
  }
}
