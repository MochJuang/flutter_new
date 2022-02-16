import 'package:freezed_annotation/freezed_annotation.dart';

part 'raja_ongkir_fail.freezed.dart';
part 'raja_ongkir_fail.g.dart';

@freezed
class RajaOngkirFail with _$RajaOngkirFail {
  factory RajaOngkirFail({
    @Default(0) int code,
    @Default("") String description,
  }) = _RajaOngkirFail;

  factory RajaOngkirFail.fromJson(Map<String, dynamic> json) =>
      _$RajaOngkirFailFromJson(json);
}
