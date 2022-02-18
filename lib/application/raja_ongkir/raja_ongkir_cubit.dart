import 'package:app1/domain/raja_ongkir/city/city_data_model.dart';
import 'package:app1/domain/raja_ongkir/cost/request_cost_model.dart';
import 'package:app1/domain/raja_ongkir/cost/response_cost_model.dart';
import 'package:app1/domain/raja_ongkir/province/province_data_model.dart';
import 'package:app1/domain/raja_ongkir/raja_ongkir_fail.dart';
import 'package:app1/domain/raja_ongkir/raja_ongkir_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'raja_ongkir_state.dart';
part 'raja_ongkir_cubit.freezed.dart';

@injectable
class RajaOngkirCubit extends Cubit<RajaOngkirState> {
  RajaOngkirCubit(this.rajaOngkir) : super(const RajaOngkirState.initial());
  IRajaOngkir rajaOngkir;
  void getProvinceData() async {
    emit(const RajaOngkirState.loading());
    try {
      final _result = await rajaOngkir.getProvinceData();

      _result.fold(
        (l) => emit(RajaOngkirState.error(l)),
        (r) => emit(RajaOngkirState.onGetProviceData(r)),
      );
    } catch (e) {
      emit(RajaOngkirState.error(
          RajaOngkirFail().copyWith(description: e.toString())));
    }
  }

  void getCityData(String provinceId) async {
    emit(const RajaOngkirState.loading());
    try {
      final _result = await rajaOngkir.getCityData(provinceId);

      _result.fold(
        (l) => emit(RajaOngkirState.error(l)),
        (r) => emit(RajaOngkirState.onGetCityData(r)),
      );
    } catch (e) {
      emit(RajaOngkirState.error(
          RajaOngkirFail().copyWith(description: e.toString())));
    }
  }

  void getCostData(RequestCostModel requestCost) async {
    emit(const RajaOngkirState.loading());
    try {
      final _result = await rajaOngkir.getCost(requestCost);

      _result.fold(
        (l) => emit(RajaOngkirState.error(l)),
        (r) => emit(RajaOngkirState.onGetCostData(r)),
      );
    } catch (e) {
      emit(RajaOngkirState.error(
          RajaOngkirFail().copyWith(description: e.toString())));
    }
  }
}
