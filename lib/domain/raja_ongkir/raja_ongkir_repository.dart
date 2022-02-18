import 'package:app1/domain/raja_ongkir/cost/request_cost_model.dart';
import 'package:app1/domain/raja_ongkir/cost/response_cost_model.dart';
import 'package:app1/domain/raja_ongkir/cost/result_model.dart';
import 'package:app1/domain/raja_ongkir/province/province_data_model.dart';
import 'package:app1/domain/raja_ongkir/raja_ongkir_fail.dart';
import 'package:app1/utils/constants.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'city/city_data_model.dart';

abstract class IRajaOngkir {
  Future<Either<RajaOngkirFail, List<ProvinceDataModel>>> getProvinceData();
  Future<Either<RajaOngkirFail, List<CityDataModel>>> getCityData(
    String provinceId,
  );
  Future<Either<RajaOngkirFail, ResponseCostModel>> getCost(
      RequestCostModel requestCost);
}

@LazySingleton(as: IRajaOngkir)
class RajaOngkirRepository extends IRajaOngkir {
  final _dio = Dio(BaseOptions(headers: {
    "key": Constants.API_KEY_RAJAONGKIR,
    "Content-Type": "application/json",
    "Accept": "application/json"
  }));

  @override
  Future<Either<RajaOngkirFail, List<ProvinceDataModel>>>
      getProvinceData() async {
    Response _response;
    try {
      _response = await _dio.get(Constants.API_RAJAONGKIR + 'starter/province');
      List<dynamic> _listData = _response.data['rajaongkir']['results'];
      var _listResult =
          _listData.map((e) => ProvinceDataModel.fromJson(e)).toList();
      return right(_listResult);
    } on DioError catch (e) {
      return left(errorResponse(e));
    }
  }

  @override
  Future<Either<RajaOngkirFail, List<CityDataModel>>> getCityData(
      String provinceId) async {
    Response _response;
    try {
      _response = await _dio.get(Constants.API_RAJAONGKIR + 'starter/city',
          queryParameters: {"province": provinceId});
      List<dynamic> _listData = _response.data['rajaongkir']['results'];
      var _listResult =
          _listData.map((e) => CityDataModel.fromJson(e)).toList();
      return right(_listResult);
    } on DioError catch (e) {
      return left(errorResponse(e));
    }
  }

  RajaOngkirFail errorResponse(DioError err) {
    if (err.type == DioErrorType.response) {
      var _errorData = err.response!.data['rajaongkir']['status'];
      var _errorModel = RajaOngkirFail.fromJson(_errorData);
      return _errorModel;
    } else {
      return RajaOngkirFail();
    }
  }

  @override
  Future<Either<RajaOngkirFail, ResponseCostModel>> getCost(
      RequestCostModel requestCost) async {
    List<Response> _response;
    List<ResponseCostModel> _responseModel = [];
    try {
      List<String> _couriers = requestCost.courier.split(',');
      var _requestLists = _couriers
          .map((e) => _dio.post(Constants.API_RAJAONGKIR + 'starter/cost',
              data: requestCost.copyWith(courier: e)))
          .toList();
      _response = await Future.wait(_requestLists);

      _response.forEach((el) {
        var _listData = el.data['rajaongkir'];
        final _resultData = ResponseCostModel.fromJson(_listData);
        _responseModel.add(_resultData);
      });

      List<ResultModel> temporary = [];
      ResponseCostModel _newData = ResponseCostModel(
        originDetails: _responseModel.first.originDetails,
        destinationDetails: _responseModel.first.destinationDetails,
      );

      _responseModel.forEach((el) {
        temporary.addAll(el.results);
      });

      var _finalData = _newData.copyWith(results: temporary);

      return right(_finalData);
    } on DioError catch (e) {
      return left(errorResponse(e));
    }
  }

  // @override
  // Future<Either<RajaOngkirFail, ResponseCostModel>> getCost(
  //     RequestCostModel requestCost) async {
  //   Response _response;
  //   try {
  //     _response = await _dio.post(Constants.API_RAJAONGKIR + 'starter/cost',
  //         data: requestCost.toJson());

  //     dynamic _listData = _response.data['rajaongkir'];
  //     final _result = ResponseCostModel.fromJson(_listData);
  //     return right(_result);
  //   } on DioError catch (e) {
  //     return left(errorResponse(e));
  //   }
  // }
}
