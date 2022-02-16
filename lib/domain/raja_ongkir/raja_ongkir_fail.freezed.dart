// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'raja_ongkir_fail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RajaOngkirFail _$RajaOngkirFailFromJson(Map<String, dynamic> json) {
  return _RajaOngkirFail.fromJson(json);
}

/// @nodoc
class _$RajaOngkirFailTearOff {
  const _$RajaOngkirFailTearOff();

  _RajaOngkirFail call({int code = 0, String description = ""}) {
    return _RajaOngkirFail(
      code: code,
      description: description,
    );
  }

  RajaOngkirFail fromJson(Map<String, Object?> json) {
    return RajaOngkirFail.fromJson(json);
  }
}

/// @nodoc
const $RajaOngkirFail = _$RajaOngkirFailTearOff();

/// @nodoc
mixin _$RajaOngkirFail {
  int get code => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RajaOngkirFailCopyWith<RajaOngkirFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RajaOngkirFailCopyWith<$Res> {
  factory $RajaOngkirFailCopyWith(
          RajaOngkirFail value, $Res Function(RajaOngkirFail) then) =
      _$RajaOngkirFailCopyWithImpl<$Res>;
  $Res call({int code, String description});
}

/// @nodoc
class _$RajaOngkirFailCopyWithImpl<$Res>
    implements $RajaOngkirFailCopyWith<$Res> {
  _$RajaOngkirFailCopyWithImpl(this._value, this._then);

  final RajaOngkirFail _value;
  // ignore: unused_field
  final $Res Function(RajaOngkirFail) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RajaOngkirFailCopyWith<$Res>
    implements $RajaOngkirFailCopyWith<$Res> {
  factory _$RajaOngkirFailCopyWith(
          _RajaOngkirFail value, $Res Function(_RajaOngkirFail) then) =
      __$RajaOngkirFailCopyWithImpl<$Res>;
  @override
  $Res call({int code, String description});
}

/// @nodoc
class __$RajaOngkirFailCopyWithImpl<$Res>
    extends _$RajaOngkirFailCopyWithImpl<$Res>
    implements _$RajaOngkirFailCopyWith<$Res> {
  __$RajaOngkirFailCopyWithImpl(
      _RajaOngkirFail _value, $Res Function(_RajaOngkirFail) _then)
      : super(_value, (v) => _then(v as _RajaOngkirFail));

  @override
  _RajaOngkirFail get _value => super._value as _RajaOngkirFail;

  @override
  $Res call({
    Object? code = freezed,
    Object? description = freezed,
  }) {
    return _then(_RajaOngkirFail(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RajaOngkirFail implements _RajaOngkirFail {
  _$_RajaOngkirFail({this.code = 0, this.description = ""});

  factory _$_RajaOngkirFail.fromJson(Map<String, dynamic> json) =>
      _$$_RajaOngkirFailFromJson(json);

  @JsonKey()
  @override
  final int code;
  @JsonKey()
  @override
  final String description;

  @override
  String toString() {
    return 'RajaOngkirFail(code: $code, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RajaOngkirFail &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$RajaOngkirFailCopyWith<_RajaOngkirFail> get copyWith =>
      __$RajaOngkirFailCopyWithImpl<_RajaOngkirFail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RajaOngkirFailToJson(this);
  }
}

abstract class _RajaOngkirFail implements RajaOngkirFail {
  factory _RajaOngkirFail({int code, String description}) = _$_RajaOngkirFail;

  factory _RajaOngkirFail.fromJson(Map<String, dynamic> json) =
      _$_RajaOngkirFail.fromJson;

  @override
  int get code;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$RajaOngkirFailCopyWith<_RajaOngkirFail> get copyWith =>
      throw _privateConstructorUsedError;
}
