import 'package:automobile_lu_common/model/count_dao.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle_type_dto.g.dart';
part 'vehicle_type_dto_translation.dart';

@JsonSerializable()
class VehicleTypeDto {
  String categoryCodeStatec;
  String? categoryCodeStatecLabel;
  int count;

  VehicleTypeDto({required this.categoryCodeStatec, required this.count});

  factory VehicleTypeDto.fromDto(CountDao dao) {
    return VehicleTypeDto(categoryCodeStatec: dao.id, count: dao.count);
  }

  factory VehicleTypeDto.fromJson(Map<String, dynamic> json) => _$VehicleTypeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleTypeDtoToJson(this);

  void translate(String local) {
    categoryCodeStatecLabel = _translate(local, categoryCodeStatec);
  }
}
