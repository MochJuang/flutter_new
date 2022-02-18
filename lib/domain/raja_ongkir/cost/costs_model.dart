import 'package:freezed_annotation/freezed_annotation.dart';

import 'cost_model.dart';

part 'costs_model.freezed.dart';
part 'costs_model.g.dart';

@freezed
class CostsModel with _$CostsModel {
  factory CostsModel({
    @Default("") String service,
    @Default("") String description,
    @Default(<CostModel>[]) List<CostModel> cost,
  }) = _CostsModel;

  factory CostsModel.fromJson(Map<String, dynamic> json) =>
      _$CostsModelFromJson(json);
}
