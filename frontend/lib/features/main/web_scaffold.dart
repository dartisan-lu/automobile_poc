import 'package:automobile_frontend/features/grid/vehicle_grid.dart';
import 'package:flutter/material.dart';

class WebScaffold extends StatelessWidget {
  const WebScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: Text(AppLocalizations.of(context)!.mainHello),
      body: VehiclePluto(),
    );
  }
}
