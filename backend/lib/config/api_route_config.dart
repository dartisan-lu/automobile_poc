import 'package:automobile_lu_backend/api/vehicle_api.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/src/router.dart';

import 'service_config.dart';

class ApiRouteConfig {
  late final Router handler;
  late final VehicleApi _bookApi;

  ApiRouteConfig(ServiceConfig serviceConfig) {
    _bookApi = VehicleApi(serviceConfig.bookService);

    handler = Router()
      ..mount('/api/vehicles', (request) => _bookApi.handler(request))
      ..mount('/api/health', (request) => Response.ok(DateTime.now().toString()));
  }
}
