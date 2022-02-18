// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_cost_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseCostModel _$$_ResponseCostModelFromJson(Map<String, dynamic> json) =>
    _$_ResponseCostModel(
      originDetails: json['origin_details'] == null
          ? null
          : CityDataModel.fromJson(
              json['origin_details'] as Map<String, dynamic>),
      destinationDetails: json['destination_details'] == null
          ? null
          : CityDataModel.fromJson(
              json['destination_details'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => ResultModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ResultModel>[],
    );

Map<String, dynamic> _$$_ResponseCostModelToJson(
        _$_ResponseCostModel instance) =>
    <String, dynamic>{
      'origin_details': instance.originDetails,
      'destination_details': instance.destinationDetails,
      'results': instance.results,
    };
