import 'package:automobile_frontend/features/vehicles/vehicle_model_list.dart';
import 'package:flutter/material.dart';

class VehicleModelMobileScaffold extends StatelessWidget {
  final String manufacturer;

  const VehicleModelMobileScaffold({required this.manufacturer, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('top')),
      body: VehicleModelList(manufacturer: manufacturer),
      bottomNavigationBar: const Text('bottom'),
    );
  }
}
