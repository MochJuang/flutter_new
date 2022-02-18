// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_cost_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestCostModel _$$_RequestCostModelFromJson(Map<String, dynamic> json) =>
    _$_RequestCostModel(
      origin: json['origin'] as int? ?? 0,
      destination: json['destination'] as int? ?? 0,
      weight: json['weight'] as int? ?? 0,
      courier: json['courier'] as String? ?? "",
    );

Map<String, dynamic> _$$_RequestCostModelToJson(_$_RequestCostModel instance) =>
    <String, dynamic>{
      'origin': instance.origin,
      'destination': instance.destination,
      'weight': instance.weight,
      'courier': instance.courier,
    };
