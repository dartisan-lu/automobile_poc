import 'package:automobile_frontend/features/vehicles/vehicle_type_detail.dart';
import 'package:automobile_frontend/service/vehicle_service.dart';
import 'package:automobile_lu_common/model/vehicle_type_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:http/http.dart' as http;

class VehicleList extends StatelessWidget {
  final vehicleService = VehicleService(http.Client());

  VehicleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var localName = AppLocalizations.of(context)!.localeName;
    return FutureBuilder<List<VehicleTypeDto>>(
        future: vehicleService.fetchVehiclesByCategoryCodeStatec(localName),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.isNotEmpty) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return VehicleTypeDetail(vehicle: snapshot.data![index]);
                  });
            } else {
              return const Text('No Data');
            }
          }
          return const Text('Loading Data...');
        });
  }
}
