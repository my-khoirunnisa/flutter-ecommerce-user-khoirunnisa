import 'package:dartz/dartz.dart';
import 'package:flutter_ecommerce_user/data/models/response/cost_response_model.dart';
import 'package:http/http.dart' as http;

import '../../core/constants/variables.dart';
import '../models/response/city_response_model.dart';
import '../models/response/province_response_model.dart';
import '../models/response/subdistrict_response_model.dart';
import '../models/response/tracking_response_model.dart';

class RajaongkirRemoteDatasource {
  Future<Either<String, ProvinceResponseModel>> getProvince() async {
    final url = Uri.parse(
        '${Variables.rajaongkirBaseUrl}/api/province?key=${Variables.rajaongkirKey}');
    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return Right(ProvinceResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to get province');
    }
  }

  Future<Either<String, CityResponseModel>> getCity(int provinceId) async {
    final url = Uri.parse(
        '${Variables.rajaongkirBaseUrl}/api/city?key=${Variables.rajaongkirKey}&province=$provinceId');
    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return Right(CityResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to get city');
    }
  }

  Future<Either<String, SubdistrictResponseModel>> getSubdistrict(
      int cityId) async {
    final url = Uri.parse(
        '${Variables.rajaongkirBaseUrl}/api/subdistrict?key=${Variables.rajaongkirKey}&city=$cityId');
    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return Right(SubdistrictResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to get subdistrict');
    }
  }

  Future<Either<String, CostResponseModel>> getCost(
      String origin, String destination, String courier) async {
    final url = Uri.parse('${Variables.rajaongkirBaseUrl}/api/cost');
    final response = await http.post(
      url,
      headers: {
        'key': Variables.rajaongkirKey,
      },
      body: {
        'origin': origin,
        'originType': 'subdistrict',
        'destination': destination,
        'destinationType': 'subdistrict',
        'weight': '1000',
        'courier': courier,
      },
    );
    if (response.statusCode == 200) {
      return Right(CostResponseModel.fromJson(response.body));
    } else {
      return const Left('Error');
    }
  }

  Future<Either<String, TrackingResponseModel>> getWaybill(
      String courier, String waybill) async {
    final url = Uri.parse('${Variables.rajaongkirBaseUrl}/api/waybill');
    final header = {
      'key': Variables.rajaongkirKey,
    };
    final response = await http.post(
      url,
      headers: header,
      body: {
        'waybill': waybill,
        'courier': courier.toLowerCase(),
      },
    );
    if (response.statusCode == 200) {
      return Right(TrackingResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to get waybill');
    }
  }
}
