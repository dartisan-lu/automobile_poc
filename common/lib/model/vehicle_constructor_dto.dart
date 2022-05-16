import 'package:automobile_lu_common/model/count_dao.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle_constructor_dto.g.dart';

@JsonSerializable()
class VehicleConstructorDto {
  String manufacturerWording;
  int count;

  VehicleConstructorDto({required this.manufacturerWording, required this.count});

  factory VehicleConstructorDto.fromDto(CountDao dao) {
    return VehicleConstructorDto(manufacturerWording: dao.id, count: dao.count);
  }

  factory VehicleConstructorDto.fromJson(Map<String, dynamic> json) => _$VehicleConstructorDtoFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleConstructorDtoToJson(this);
}
