import 'package:automobile_frontend/features/vehicles/vehicle_model_mobile_scaffold.dart';
import 'package:automobile_lu_common/model/vehicle_constructor_dto.dart';
import 'package:flutter/material.dart';

class VehicleConstructorDetail extends StatelessWidget {
  final VehicleConstructorDto vehicle;

  const VehicleConstructorDetail({required this.vehicle, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).primaryColor),
        borderRadius: BorderRadius.circular(2),
      ),
      child: InkWell(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text('${vehicle.manufacturerWording} : ${vehicle.count}')),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => VehicleModelMobileScaffold(manufacturer: vehicle.manufacturerWording)));
        },
      ),
    );
  }
}
