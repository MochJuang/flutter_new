import 'package:app1/domain/raja_ongkir/city/city_data_model.dart';
import 'package:app1/domain/raja_ongkir/cost/result_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_cost_model.freezed.dart';
part 'response_cost_model.g.dart';

@freezed
class ResponseCostModel with _$ResponseCostModel {
  factory ResponseCostModel(
      {@JsonKey(name: 'origin_details')
          CityDataModel? originDetails,
      @JsonKey(name: 'destination_details')
          CityDataModel? destinationDetails,
      @Default(<ResultModel>[])
          List<ResultModel> results}) = _ResponseCostModel;

  factory ResponseCostModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseCostModelFromJson(json);
}
