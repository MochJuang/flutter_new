part of 'raja_ongkir_cubit.dart';

@freezed
class RajaOngkirState with _$RajaOngkirState {
  const factory RajaOngkirState.initial() = _Initial;
  const factory RajaOngkirState.loading() = _Loading;
  const factory RajaOngkirState.error(RajaOngkirFail fail) = _Error;
  const factory RajaOngkirState.onGetProviceData(
      List<ProvinceDataModel> dataModel) = _onGetProviceData;
  const factory RajaOngkirState.onGetCityData(List<CityDataModel> dataModel) =
      _onGetCityData;
  const factory RajaOngkirState.onGetCostData(ResponseCostModel dataModel) =
      _onGetCostData;
}
