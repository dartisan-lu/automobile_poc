import 'package:automobile_lu_common/model/vehicle_manufacturer_dto.dart';
import 'package:flutter/material.dart';

class VehicleModelDetail extends StatelessWidget {
  final VehicleManufacturerDto vehicle;

  const VehicleModelDetail({required this.vehicle, Key? key}) : super(key: key);

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
            child: Text('${vehicle.commercialName} : ${vehicle.count}')),
        onTap: () {},
      ),
    );
  }
}
