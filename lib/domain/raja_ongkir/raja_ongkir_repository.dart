import 'package:app1/domain/raja_ongkir/province/province_data_model.dart';
import 'package:app1/domain/raja_ongkir/raja_ongkir_fail.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class IRajaOngkir {
  Future<Either<RajaOngkirFail, List<ProvinceDataModel>>> getCityData();
}

class RajaOngkirRepository extends IRajaOngkir {
  final _dio = new Dio();

  Future<Either<RajaOngkirFail, List<ProvinceDataModel>>> getCityData() async {
    Response _response;
    try {
      _response =
          await _dio.get(DotEnv().env['URL_RAJAONGKIR']! + 'starter/province');
      List<dynamic> _listData = _response.data['rajaongkir']['result'];
      var _listResult =
          _listData.map((e) => ProvinceDataModel.fromJson(e)).toList();
      right(_listResult);
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        var _errorData = e.response!.data['rajaongkir']['status'];
        var _errorModel = RajaOngkirFail.fromJson(_errorData);

        left(_errorModel);
      }
    }

    return left(RajaOngkirFail());
  }
}
