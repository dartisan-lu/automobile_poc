import 'package:automobile_lu_common/model/vehicle_dto.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pluto_grid/pluto_grid.dart';

import '../../service/vehicle_service.dart';

class VehiclePluto extends StatefulWidget {
  VehiclePluto({Key? key}) : super(key: key) {}

  @override
  State<VehiclePluto> createState() => _VehiclePlutoState();
}

class _VehiclePlutoState extends State<VehiclePluto> {
  late final PlutoGridStateManager stateManager;
  final vehicleService = VehicleService(http.Client());
  List<PlutoRow> rows = [];

  final List<PlutoColumn> columns = <PlutoColumn>[
    PlutoColumn(
      title: 'Operation Code',
      field: 'operationCode',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Category Code (Statec)',
      field: 'categoryCodeStatec',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Bodywork Code (EU)',
      field: 'europeanBodyworkCode',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'ABS',
      field: 'absIndicator',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'ASR',
      field: 'asrIndicator',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Axle Track 1',
      field: 'axleTrack1',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Axle Track 2',
      field: 'axleTrack2',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Back Seats',
      field: 'backSeats',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Body Work',
      field: 'bodyworkWording',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'CO2 Emissions',
      field: 'co2Emissions',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'CO2 Emissions ECO WLTP',
      field: 'co2EmissionsEcoWltp',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'CO2 Emissions WLTP',
      field: 'co2EmissionsWltp',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Color',
      field: 'color',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Commercial Name',
      field: 'commercialName',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Cylinders',
      field: 'cylinders',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'EC Approval Number',
      field: 'ecApprovalNumber',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Electric Energy Consumption',
      field: 'electricEnergyConsumption',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Electric Range',
      field: 'electricRange',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Engine Capacity',
      field: 'engineCapacity',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Engine Code',
      field: 'engineCode',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Exhaust Emission Level',
      field: 'exhaustEmissionLevel',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Exhaust EmissionS NOX',
      field: 'exhaustEmissionsNox',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Exhaust EmissionS Particulates',
      field: 'exhaustEmissionsParticulates',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'External European Category Code',
      field: 'externalEuropeanCategoryCode',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'First Registration Date',
      field: 'firstRegistrationDate',
      type: PlutoColumnType.date(),
    ),
    PlutoColumn(
      title: 'First Registration LU Date',
      field: 'firstRegistrationLuDate',
      type: PlutoColumnType.date(),
    ),
    PlutoColumn(
      title: 'Front Seats',
      field: 'frontSeats',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Fuel',
      field: 'fuel',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Fuel Code',
      field: 'fuelCode',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Fuel Consumption',
      field: 'fuelConsumption',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Height',
      field: 'height',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Indication Of Use',
      field: 'indicationOfUse',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: '4x4',
      field: 'indicator4x4',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Leasing',
      field: 'leasing',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Length',
      field: 'length',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Manufacturer Code',
      field: 'manufacturerCode',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Manufacturer Wording',
      field: 'manufacturerWording',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Mass In Running Order',
      field: 'massInRunningOrder',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Mass Wltp',
      field: 'massWltp',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Maximum Laden Mass',
      field: 'maximumLadenMass',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Maximum Mass Combination',
      field: 'maximumMassCombination',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Maximum Power',
      field: 'maximumPower',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Maximum Towable Mass Brakeless Trailer',
      field: 'maximumTowableMassBrakelessTrailer',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Maximum Towable Mass Centre Axle Trailer',
      field: 'maximumTowableMassCentreAxleTrailer',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Maximum Vertical Mass Coupling Point',
      field: 'maximumVerticalMassCouplingPoint',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Off Road Declaration Date',
      field: 'offRoadDeclarationDate',
      type: PlutoColumnType.date(),
    ),
    PlutoColumn(
      title: 'Origin Country',
      field: 'originCountry',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Registration CertificateDate',
      field: 'registrationCertificateDate',
      type: PlutoColumnType.date(),
    ),
    PlutoColumn(
      title: 'Simple Axles',
      field: 'simpleAxles',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Sitting Places',
      field: 'sittingPlaces',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Specific Back Seats',
      field: 'specificBackSeats',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Specific Front Seats',
      field: 'specificFrontSeats',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Standing Places',
      field: 'standingPlaces',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Tandem Axles',
      field: 'tandemAxles',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Tridem Axles',
      field: 'tridemAxles',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Type',
      field: 'type',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'User Information',
      field: 'userInformation',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Variant',
      field: 'variant',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Version',
      field: 'version',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Wheelbase',
      field: 'wheelbase',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Width',
      field: 'width',
      type: PlutoColumnType.number(),
    ),
  ];

  void tranformData(List<VehicleDto> data) {
    rows = data
        .map((v) => PlutoRow(cells: {
              'operationCode': PlutoCell(value: v.operationCode),
              'categoryCodeStatec': PlutoCell(value: v.categoryCodeStatec),
              'europeanBodyworkCode': PlutoCell(value: v.europeanBodyworkCode),
              'absIndicator': PlutoCell(value: v.absIndicator),
              'asrIndicator': PlutoCell(value: v.asrIndicator),
              'axleTrack1': PlutoCell(value: v.axleTrack1),
              'axleTrack1': PlutoCell(value: v.axleTrack1),
              'axleTrack2': PlutoCell(value: v.axleTrack2),
              'backSeats': PlutoCell(value: v.backSeats),
              'bodyworkWording': PlutoCell(value: v.bodyworkWording),
              'co2Emissions': PlutoCell(value: v.co2Emissions),
              'co2EmissionsEcoWltp': PlutoCell(value: v.co2EmissionsEcoWltp),
              'co2EmissionsWltp': PlutoCell(value: v.co2EmissionsWltp),
              'color': PlutoCell(value: v.color),
              'commercialName': PlutoCell(value: v.commercialName),
              'cylinders': PlutoCell(value: v.cylinders),
              'ecApprovalNumber': PlutoCell(value: v.ecApprovalNumber),
              'electricEnergyConsumption': PlutoCell(value: v.electricEnergyConsumption),
              'electricRange': PlutoCell(value: v.electricRange),
              'engineCapacity': PlutoCell(value: v.engineCapacity),
              'engineCode': PlutoCell(value: v.engineCode),
              'exhaustEmissionLevel': PlutoCell(value: v.exhaustEmissionLevel),
              'exhaustEmissionsNox': PlutoCell(value: v.exhaustEmissionsNox),
              'exhaustEmissionsParticulates': PlutoCell(value: v.exhaustEmissionsParticulates),
              'externalEuropeanCategoryCode': PlutoCell(value: v.externalEuropeanCategoryCode),
              'firstRegistrationDate': PlutoCell(value: v.firstRegistrationDate),
              'firstRegistrationLuDate': PlutoCell(value: v.firstRegistrationLuDate),
              'frontSeats': PlutoCell(value: v.frontSeats),
              'fuel': PlutoCell(value: v.fuel),
              'fuelCode': PlutoCell(value: v.fuelCode),
              'fuelConsumption': PlutoCell(value: v.fuelConsumption),
              'height': PlutoCell(value: v.height),
              'indicationOfUse': PlutoCell(value: v.indicationOfUse),
              'indicator4x4': PlutoCell(value: v.indicator4x4),
              'leasing': PlutoCell(value: v.leasing),
              'length': PlutoCell(value: v.length),
              'manufacturerCode': PlutoCell(value: v.manufacturerCode),
              'manufacturerWording': PlutoCell(value: v.manufacturerWording),
              'massInRunningOrder': PlutoCell(value: v.massInRunningOrder),
              'massWltp': PlutoCell(value: v.massWltp),
              'maximumLadenMass': PlutoCell(value: v.maximumLadenMass),
              'maximumMassCombination': PlutoCell(value: v.maximumMassCombination),
              'maximumPower': PlutoCell(value: v.maximumPower),
              'maximumTowableMassBrakelessTrailer': PlutoCell(value: v.maximumTowableMassBrakelessTrailer),
              'maximumTowableMassCentreAxleTrailer': PlutoCell(value: v.maximumTowableMassCentreAxleTrailer),
              'maximumVerticalMassCouplingPoint': PlutoCell(value: v.maximumVerticalMassCouplingPoint),
              'offRoadDeclarationDate': PlutoCell(value: v.offRoadDeclarationDate),
              'originCountry': PlutoCell(value: v.originCountry),
              'registrationCertificateDate': PlutoCell(value: v.registrationCertificateDate),
              'simpleAxles': PlutoCell(value: v.simpleAxles),
              'sittingPlaces': PlutoCell(value: v.sittingPlaces),
              'specificBackSeats': PlutoCell(value: v.specificBackSeats),
              'specificFrontSeats': PlutoCell(value: v.specificFrontSeats),
              'standingPlaces': PlutoCell(value: v.standingPlaces),
              'tandemAxles': PlutoCell(value: v.tandemAxles),
              'tridemAxles': PlutoCell(value: v.tridemAxles),
              'type': PlutoCell(value: v.type),
              'userInformation': PlutoCell(value: v.userInformation),
              'variant': PlutoCell(value: v.variant),
              'version': PlutoCell(value: v.version),
              'wheelbase': PlutoCell(value: v.wheelbase),
              'width': PlutoCell(value: v.width),
            }))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<VehicleDto>>(
        future: vehicleService.fetchVehicles(),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            tranformData(snapshot.data ?? []);
            return Scaffold(
              body: Container(
                padding: const EdgeInsets.all(15),
                child: PlutoGrid(
                  columns: columns,
                  rows: rows,
                  onLoaded: (PlutoGridOnLoadedEvent event) {
                    stateManager = event.stateManager;
                  },
                  onChanged: (PlutoGridOnChangedEvent event) {
                    print(event);
                  },
                  configuration: const PlutoGridConfiguration(
                    enableColumnBorder: true,
                  ),
                ),
              ),
            );
          } else {
            return const SizedBox();
          }
        });
  }
}
