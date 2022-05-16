import 'package:automobile_lu_common/model/count_dao.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle_manufacturer_dto.g.dart';

@JsonSerializable()
class VehicleManufacturerDto {
  String commercialName;
  int count;

  VehicleManufacturerDto({required this.commercialName, required this.count});

  factory VehicleManufacturerDto.fromDto(CountDao dao) {
    return VehicleManufacturerDto(commercialName: dao.id, count: dao.count);
  }

  factory VehicleManufacturerDto.fromJson(Map<String, dynamic> json) => _$VehicleManufacturerDtoFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleManufacturerDtoToJson(this);
}
