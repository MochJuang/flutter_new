import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_cost_model.freezed.dart';
part 'request_cost_model.g.dart';

@freezed
class RequestCostModel with _$RequestCostModel {
  factory RequestCostModel({
    @Default(0) int origin,
    @Default(0) int destination,
    @Default(0) int weight,
    @Default("") String courier,
  }) = _RequestCostModel;

  factory RequestCostModel.fromJson(Map<String, dynamic> json) =>
      _$RequestCostModelFromJson(json);
}
