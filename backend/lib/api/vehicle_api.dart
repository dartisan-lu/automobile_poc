import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../service/vehicle_service.dart';

class VehicleApi {
  VehicleService vehicleService;

  VehicleApi(this.vehicleService);

  /// Handler
  Handler get handler {
    final _handler = Router()
      ..get('/', (Request request) => getVehicles(request))
      ..get('/byCategoryCodeStatec', (Request request) => getByCategoryCodeStatec(request))
      ..get('/byManufacturer', (Request request) => getByManufacturer(request))
      ..get('/byModel', (Request request) => getByModel(request));
    return _handler;
  }

  /// Get Vehicles
  Future<Response> getVehicles(Request request) async {
    var vehicles = await vehicleService.getVehicles();
    var json = jsonEncode(vehicles.map((e) => e.toJson()).toList());
    return Response(200, body: json);
  }

  /// Get Count By Category Code Statec
  Future<Response> getByCategoryCodeStatec(Request request) async {
    var local = request.requestedUri.queryParameters['local'] ?? 'en';
    var vehicles = await vehicleService.getByCategoryCodeStatec(local);
    var json = jsonEncode(vehicles.map((e) => e.toJson()).toList());
    return Response(200, body: json);
  }

  /// Get Count By Manufacturer
  Future<Response> getByManufacturer(Request request) async {
    var local = request.requestedUri.queryParameters['local'] ?? 'en';
    var categoryCodeStatec = request.requestedUri.queryParameters['categoryCodeStatec'] ?? 'en';
    var vehicles = await vehicleService.getByManufacturer(categoryCodeStatec, local);
    var json = jsonEncode(vehicles.map((e) => e.toJson()).toList());
    return Response(200, body: json);
  }

  /// Get Count By Model
  Future<Response> getByModel(Request request) async {
    var local = request.requestedUri.queryParameters['local'] ?? 'en';
    var manufacturer = request.requestedUri.queryParameters['manufacturer'] ?? 'en';
    var vehicles = await vehicleService.getByModel(manufacturer, local);
    var json = jsonEncode(vehicles.map((e) => e.toJson()).toList());
    return Response(200, body: json);
  }
}
