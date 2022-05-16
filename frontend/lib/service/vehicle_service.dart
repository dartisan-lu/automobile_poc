import 'dart:convert';

import 'package:automobile_lu_common/model/vehicle_constructor_dto.dart';
import 'package:automobile_lu_common/model/vehicle_dto.dart';
import 'package:automobile_lu_common/model/vehicle_manufacturer_dto.dart';
import 'package:automobile_lu_common/model/vehicle_type_dto.dart';
import 'package:http/http.dart' as http;

import '../config/system_values.dart' as config;

class VehicleService {
  final http.Client client;

  VehicleService(this.client);

  Future<List<VehicleDto>> fetchVehicles() async {
    final response = await client.get(Uri.parse('${config.sysValRoot}/vehicles'));
    Iterable iter = json.decode(response.body);
    List<VehicleDto> vehicles = List<VehicleDto>.from(iter.map((json) => VehicleDto.fromJson(json)));
    return vehicles;
  }

  Future<List<VehicleTypeDto>> fetchVehiclesByCategoryCodeStatec(String localName) async {
    final response = await client.get(Uri.parse('${config.sysValRoot}/vehicles/byCategoryCodeStatec?local=$localName'));
    Iterable iter = json.decode(response.body);
    List<VehicleTypeDto> vehicles = List<VehicleTypeDto>.from(iter.map((json) => VehicleTypeDto.fromJson(json)));
    vehicles.sort((a, b) => (a.categoryCodeStatecLabel ?? '').compareTo(b.categoryCodeStatecLabel ?? ''));
    return vehicles;
  }

  Future<List<VehicleConstructorDto>> fetchVehiclesByManufacturer(String categoryCodeStatec, String localName) async {
    final response = await client.get(Uri.parse(
        '${config.sysValRoot}/vehicles/byManufacturer?local=$localName&categoryCodeStatec=$categoryCodeStatec'));
    Iterable iter = json.decode(response.body);
    List<VehicleConstructorDto> vehicles =
        List<VehicleConstructorDto>.from(iter.map((json) => VehicleConstructorDto.fromJson(json)));
    vehicles.sort((a, b) => (a.manufacturerWording).compareTo(b.manufacturerWording));
    return vehicles;
  }

  Future<List<VehicleManufacturerDto>> fetchVehiclesByModel(String manufacturer, String localName) async {
    final response = await client
        .get(Uri.parse('${config.sysValRoot}/vehicles/byModel?local=$localName&manufacturer=$manufacturer'));
    Iterable iter = json.decode(response.body);
    List<VehicleManufacturerDto> vehicles =
        List<VehicleManufacturerDto>.from(iter.map((json) => VehicleManufacturerDto.fromJson(json)));
    vehicles.sort((a, b) => (a.commercialName).compareTo(b.commercialName));
    return vehicles;
  }
}
