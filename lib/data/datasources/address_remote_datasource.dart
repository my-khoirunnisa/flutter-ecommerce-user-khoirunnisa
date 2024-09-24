import 'package:dartz/dartz.dart';
import 'package:flutter_ecommerce_user/data/models/request/address_request_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_ecommerce_user/core/constants/variables.dart';
import 'package:flutter_ecommerce_user/data/datasources/auth_local_datasource.dart';
import 'package:flutter_ecommerce_user/data/models/response/address_response_model.dart';

class AddressRemoteDatasource {
  Future<Either<String, AddressResponseModel>> getAddress() async {
    final url = Uri.parse('${Variables.baseUrl}/api/buyer/addresses');
    final authData = await AuthLocalDatasource().getAuthData();
    final header = {
      'Accept': 'Application/json',
      'Content-type': 'Application/json',
      'Authorization': 'Bearer ${authData.data!.token}',
    };
    final response = await http.get(url, headers: header);
    if (response.statusCode == 200) {
      return Right(AddressResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to get addresses');
    }
  }

  Future<Either<String, String>> addAddress(AddressRequestModel data) async {
    final url = Uri.parse('${Variables.baseUrl}/api/buyer/addresses');
    final authData = await AuthLocalDatasource().getAuthData();
    final header = {
      'Accept': 'Application/json',
      'Content-type': 'Application/json',
      'Authorization': 'Bearer ${authData.data!.token}',
    };
    final response = await http.post(
      url,
      headers: header,
      body: data.toJson(),
    );
    if (response.statusCode == 201) {
      return const Right('Address added successfully');
    } else {
      return const Left('Failed to add address');
    }
  }
}