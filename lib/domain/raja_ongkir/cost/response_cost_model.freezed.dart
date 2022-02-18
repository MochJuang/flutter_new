// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_cost_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseCostModel _$ResponseCostModelFromJson(Map<String, dynamic> json) {
  return _ResponseCostModel.fromJson(json);
}

/// @nodoc
class _$ResponseCostModelTearOff {
  const _$ResponseCostModelTearOff();

  _ResponseCostModel call(
      {@JsonKey(name: 'origin_details') CityDataModel? originDetails,
      @JsonKey(name: 'destination_details') CityDataModel? destinationDetails,
      List<ResultModel> results = const <ResultModel>[]}) {
    return _ResponseCostModel(
      originDetails: originDetails,
      destinationDetails: destinationDetails,
      results: results,
    );
  }

  ResponseCostModel fromJson(Map<String, Object?> json) {
    return ResponseCostModel.fromJson(json);
  }
}

/// @nodoc
const $ResponseCostModel = _$ResponseCostModelTearOff();

/// @nodoc
mixin _$ResponseCostModel {
  @JsonKey(name: 'origin_details')
  CityDataModel? get originDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'destination_details')
  CityDataModel? get destinationDetails => throw _privateConstructorUsedError;
  List<ResultModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseCostModelCopyWith<ResponseCostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCostModelCopyWith<$Res> {
  factory $ResponseCostModelCopyWith(
          ResponseCostModel value, $Res Function(ResponseCostModel) then) =
      _$ResponseCostModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'origin_details') CityDataModel? originDetails,
      @JsonKey(name: 'destination_details') CityDataModel? destinationDetails,
      List<ResultModel> results});

  $CityDataModelCopyWith<$Res>? get originDetails;
  $CityDataModelCopyWith<$Res>? get destinationDetails;
}

/// @nodoc
class _$ResponseCostModelCopyWithImpl<$Res>
    implements $ResponseCostModelCopyWith<$Res> {
  _$ResponseCostModelCopyWithImpl(this._value, this._then);

  final ResponseCostModel _value;
  // ignore: unused_field
  final $Res Function(ResponseCostModel) _then;

  @override
  $Res call({
    Object? originDetails = freezed,
    Object? destinationDetails = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      originDetails: originDetails == freezed
          ? _value.originDetails
          : originDetails // ignore: cast_nullable_to_non_nullable
              as CityDataModel?,
      destinationDetails: destinationDetails == freezed
          ? _value.destinationDetails
          : destinationDetails // ignore: cast_nullable_to_non_nullable
              as CityDataModel?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultModel>,
    ));
  }

  @override
  $CityDataModelCopyWith<$Res>? get originDetails {
    if (_value.originDetails == null) {
      return null;
    }

    return $CityDataModelCopyWith<$Res>(_value.originDetails!, (value) {
      return _then(_value.copyWith(originDetails: value));
    });
  }

  @override
  $CityDataModelCopyWith<$Res>? get destinationDetails {
    if (_value.destinationDetails == null) {
      return null;
    }

    return $CityDataModelCopyWith<$Res>(_value.destinationDetails!, (value) {
      return _then(_value.copyWith(destinationDetails: value));
    });
  }
}

/// @nodoc
abstract class _$ResponseCostModelCopyWith<$Res>
    implements $ResponseCostModelCopyWith<$Res> {
  factory _$ResponseCostModelCopyWith(
          _ResponseCostModel value, $Res Function(_ResponseCostModel) then) =
      __$ResponseCostModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'origin_details') CityDataModel? originDetails,
      @JsonKey(name: 'destination_details') CityDataModel? destinationDetails,
      List<ResultModel> results});

  @override
  $CityDataModelCopyWith<$Res>? get originDetails;
  @override
  $CityDataModelCopyWith<$Res>? get destinationDetails;
}

/// @nodoc
class __$ResponseCostModelCopyWithImpl<$Res>
    extends _$ResponseCostModelCopyWithImpl<$Res>
    implements _$ResponseCostModelCopyWith<$Res> {
  __$ResponseCostModelCopyWithImpl(
      _ResponseCostModel _value, $Res Function(_ResponseCostModel) _then)
      : super(_value, (v) => _then(v as _ResponseCostModel));

  @override
  _ResponseCostModel get _value => super._value as _ResponseCostModel;

  @override
  $Res call({
    Object? originDetails = freezed,
    Object? destinationDetails = freezed,
    Object? results = freezed,
  }) {
    return _then(_ResponseCostModel(
      originDetails: originDetails == freezed
          ? _value.originDetails
          : originDetails // ignore: cast_nullable_to_non_nullable
              as CityDataModel?,
      destinationDetails: destinationDetails == freezed
          ? _value.destinationDetails
          : destinationDetails // ignore: cast_nullable_to_non_nullable
              as CityDataModel?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseCostModel implements _ResponseCostModel {
  _$_ResponseCostModel(
      {@JsonKey(name: 'origin_details') this.originDetails,
      @JsonKey(name: 'destination_details') this.destinationDetails,
      this.results = const <ResultModel>[]});

  factory _$_ResponseCostModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseCostModelFromJson(json);

  @override
  @JsonKey(name: 'origin_details')
  final CityDataModel? originDetails;
  @override
  @JsonKey(name: 'destination_details')
  final CityDataModel? destinationDetails;
  @JsonKey()
  @override
  final List<ResultModel> results;

  @override
  String toString() {
    return 'ResponseCostModel(originDetails: $originDetails, destinationDetails: $destinationDetails, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseCostModel &&
            const DeepCollectionEquality()
                .equals(other.originDetails, originDetails) &&
            const DeepCollectionEquality()
                .equals(other.destinationDetails, destinationDetails) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(originDetails),
      const DeepCollectionEquality().hash(destinationDetails),
      const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$ResponseCostModelCopyWith<_ResponseCostModel> get copyWith =>
      __$ResponseCostModelCopyWithImpl<_ResponseCostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseCostModelToJson(this);
  }
}

abstract class _ResponseCostModel implements ResponseCostModel {
  factory _ResponseCostModel(
      {@JsonKey(name: 'origin_details') CityDataModel? originDetails,
      @JsonKey(name: 'destination_details') CityDataModel? destinationDetails,
      List<ResultModel> results}) = _$_ResponseCostModel;

  factory _ResponseCostModel.fromJson(Map<String, dynamic> json) =
      _$_ResponseCostModel.fromJson;

  @override
  @JsonKey(name: 'origin_details')
  CityDataModel? get originDetails;
  @override
  @JsonKey(name: 'destination_details')
  CityDataModel? get destinationDetails;
  @override
  List<ResultModel> get results;
  @override
  @JsonKey(ignore: true)
  _$ResponseCostModelCopyWith<_ResponseCostModel> get copyWith =>
      throw _privateConstructorUsedError;
}
