// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleTypeDto _$VehicleTypeDtoFromJson(Map<String, dynamic> json) => VehicleTypeDto(
      categoryCodeStatec: json['categoryCodeStatec'] as String,
      count: json['count'] as int,
    )..categoryCodeStatecLabel = json['categoryCodeStatecLabel'] as String?;

Map<String, dynamic> _$VehicleTypeDtoToJson(VehicleTypeDto instance) => <String, dynamic>{
      'categoryCodeStatec': instance.categoryCodeStatec,
      'categoryCodeStatecLabel': instance.categoryCodeStatecLabel,
      'count': instance.count,
    };
