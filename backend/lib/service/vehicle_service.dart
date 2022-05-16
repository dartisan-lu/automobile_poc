import 'package:automobile_lu_common/model/count_dao.dart';
import 'package:automobile_lu_common/model/vehicle_constructor_dto.dart';
import 'package:automobile_lu_common/model/vehicle_dao.dart';
import 'package:automobile_lu_common/model/vehicle_dto.dart';
import 'package:automobile_lu_common/model/vehicle_manufacturer_dto.dart';
import 'package:automobile_lu_common/model/vehicle_type_dto.dart';
import 'package:mongo_dart/mongo_dart.dart';

class VehicleService {
  final Db db;
  static const collection = 'vehicle';

  VehicleService(this.db);

  Future<List<VehicleDto>> getVehicles() async {
    var col = db.collection(collection);
    //var projection = {'_id':1, 'OPE':1};
    var result = await col
        //.modernFind(limit: 10,projection: projection)
        .modernFind(limit: 5000)
        .map((e) => VehicleDao.fromJson(e))
        .map((e) => VehicleDto.fromDto(e))
        .toList();
    return result;
  }

  Future<List<VehicleTypeDto>> getByCategoryCodeStatec(String local) async {
    var col = db.collection(collection);
    //var projection = {'_id':1, 'OPE':1};
    var result = await col
        .aggregateToStream(
            AggregationPipelineBuilder().addStage(Group(id: Field('CATSTC'), fields: {'count': Sum(1)})).build())
        .map((e) => CountDao.fromJson(e))
        .map((e) => VehicleTypeDto.fromDto(e))
        .map((e) {
      e.translate(local);
      return e;
    }).toList();
    return result;
  }

  Future<List<VehicleConstructorDto>> getByManufacturer(String categoryCodeStatec, String local) async {
    var col = db.collection(collection);
    //var projection = {'_id':1, 'OPE':1};
    var result = await col
        .aggregateToStream(AggregationPipelineBuilder()
            .addStage(Match(where.eq('CATSTC', categoryCodeStatec).map['\$query']))
            .addStage(Group(id: Field('LIBMRQ'), fields: {'count': Sum(1)}))
            .build())
        .map((e) => CountDao.fromJson(e))
        .map((e) => VehicleConstructorDto.fromDto(e))
        .toList();
    return result;
  }

  Future<List<VehicleManufacturerDto>> getByModel(String manufacturer, String local) async {
    var col = db.collection(collection);
    //var projection = {'_id':1, 'OPE':1};
    var result = await col
        .aggregateToStream(AggregationPipelineBuilder()
            .addStage(Match(where.eq('LIBMRQ', manufacturer).map['\$query']))
            .addStage(Group(id: Field('TYPCOM'), fields: {'count': Sum(1)}))
            .build())
        .map((e) => CountDao.fromJson(e))
        .map((e) => VehicleManufacturerDto.fromDto(e))
        .toList();
    return result;
  }
}
