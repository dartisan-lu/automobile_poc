import 'package:automobile_lu_backend/service/vehicle_service.dart';
import 'package:mongo_dart/mongo_dart.dart';

import 'environment_config.dart';

class ServiceConfig {
  late final VehicleService bookService;

  ServiceConfig(Db db, EnvironmentConfig environmentConfig) {
    bookService = VehicleService(db);
  }
}
