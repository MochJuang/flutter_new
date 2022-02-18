// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request_cost_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestCostModel _$RequestCostModelFromJson(Map<String, dynamic> json) {
  return _RequestCostModel.fromJson(json);
}

/// @nodoc
class _$RequestCostModelTearOff {
  const _$RequestCostModelTearOff();

  _RequestCostModel call(
      {int origin = 0,
      int destination = 0,
      int weight = 0,
      String courier = ""}) {
    return _RequestCostModel(
      origin: origin,
      destination: destination,
      weight: weight,
      courier: courier,
    );
  }

  RequestCostModel fromJson(Map<String, Object?> json) {
    return RequestCostModel.fromJson(json);
  }
}

/// @nodoc
const $RequestCostModel = _$RequestCostModelTearOff();

/// @nodoc
mixin _$RequestCostModel {
  int get origin => throw _privateConstructorUsedError;
  int get destination => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  String get courier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestCostModelCopyWith<RequestCostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCostModelCopyWith<$Res> {
  factory $RequestCostModelCopyWith(
          RequestCostModel value, $Res Function(RequestCostModel) then) =
      _$RequestCostModelCopyWithImpl<$Res>;
  $Res call({int origin, int destination, int weight, String courier});
}

/// @nodoc
class _$RequestCostModelCopyWithImpl<$Res>
    implements $RequestCostModelCopyWith<$Res> {
  _$RequestCostModelCopyWithImpl(this._value, this._then);

  final RequestCostModel _value;
  // ignore: unused_field
  final $Res Function(RequestCostModel) _then;

  @override
  $Res call({
    Object? origin = freezed,
    Object? destination = freezed,
    Object? weight = freezed,
    Object? courier = freezed,
  }) {
    return _then(_value.copyWith(
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as int,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      courier: courier == freezed
          ? _value.courier
          : courier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RequestCostModelCopyWith<$Res>
    implements $RequestCostModelCopyWith<$Res> {
  factory _$RequestCostModelCopyWith(
          _RequestCostModel value, $Res Function(_RequestCostModel) then) =
      __$RequestCostModelCopyWithImpl<$Res>;
  @override
  $Res call({int origin, int destination, int weight, String courier});
}

/// @nodoc
class __$RequestCostModelCopyWithImpl<$Res>
    extends _$RequestCostModelCopyWithImpl<$Res>
    implements _$RequestCostModelCopyWith<$Res> {
  __$RequestCostModelCopyWithImpl(
      _RequestCostModel _value, $Res Function(_RequestCostModel) _then)
      : super(_value, (v) => _then(v as _RequestCostModel));

  @override
  _RequestCostModel get _value => super._value as _RequestCostModel;

  @override
  $Res call({
    Object? origin = freezed,
    Object? destination = freezed,
    Object? weight = freezed,
    Object? courier = freezed,
  }) {
    return _then(_RequestCostModel(
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as int,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      courier: courier == freezed
          ? _value.courier
          : courier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestCostModel implements _RequestCostModel {
  _$_RequestCostModel(
      {this.origin = 0,
      this.destination = 0,
      this.weight = 0,
      this.courier = ""});

  factory _$_RequestCostModel.fromJson(Map<String, dynamic> json) =>
      _$$_RequestCostModelFromJson(json);

  @JsonKey()
  @override
  final int origin;
  @JsonKey()
  @override
  final int destination;
  @JsonKey()
  @override
  final int weight;
  @JsonKey()
  @override
  final String courier;

  @override
  String toString() {
    return 'RequestCostModel(origin: $origin, destination: $destination, weight: $weight, courier: $courier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RequestCostModel &&
            const DeepCollectionEquality().equals(other.origin, origin) &&
            const DeepCollectionEquality()
                .equals(other.destination, destination) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other.courier, courier));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(origin),
      const DeepCollectionEquality().hash(destination),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(courier));

  @JsonKey(ignore: true)
  @override
  _$RequestCostModelCopyWith<_RequestCostModel> get copyWith =>
      __$RequestCostModelCopyWithImpl<_RequestCostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestCostModelToJson(this);
  }
}

abstract class _RequestCostModel implements RequestCostModel {
  factory _RequestCostModel(
      {int origin,
      int destination,
      int weight,
      String courier}) = _$_RequestCostModel;

  factory _RequestCostModel.fromJson(Map<String, dynamic> json) =
      _$_RequestCostModel.fromJson;

  @override
  int get origin;
  @override
  int get destination;
  @override
  int get weight;
  @override
  String get courier;
  @override
  @JsonKey(ignore: true)
  _$RequestCostModelCopyWith<_RequestCostModel> get copyWith =>
      throw _privateConstructorUsedError;
}
