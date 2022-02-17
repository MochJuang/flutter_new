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
}
