import 'package:automobile_frontend/features/vehicles/vehicle_list.dart';
import 'package:flutter/material.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('top')),
      body: VehicleList(),
      bottomNavigationBar: const Text('bottom'),
    );
  }
}
