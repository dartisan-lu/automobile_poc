import 'package:automobile_frontend/features/vehicles/vehicle_constructor_list.dart';
import 'package:flutter/material.dart';

class VehicleConstructorMobileScaffold extends StatelessWidget {
  final String categoryCodeStatec;

  const VehicleConstructorMobileScaffold({required this.categoryCodeStatec, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('top')),
      body: VehicleConstructorList(categoryCodeStatec: categoryCodeStatec),
      bottomNavigationBar: const Text('bottom'),
    );
  }
}
