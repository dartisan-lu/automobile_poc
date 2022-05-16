import 'package:automobile_lu_common/model/vehicle_base.dart';
import 'package:automobile_lu_common/model/vehicle_dao.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle_dto.g.dart';

@JsonSerializable()
class VehicleDto implements VehicleBase {
  @override
  String? operationCode;

  @override
  String categoryCodeStatec;

  @override
  String europeanBodyworkCode;

  @override
  String absIndicator;

  @override
  String asrIndicator;

  @override
  String axleTrack1;

  @override
  String axleTrack2;

  @override
  int backSeats;

  @override
  String bodyworkWording;

  @override
  int co2Emissions;

  @override
  String co2EmissionsEcoWltp;

  @override
  String co2EmissionsWltp;

  @override
  String color;

  @override
  String commercialName;

  @override
  int cylinders;

  @override
  String ecApprovalNumber;

  @override
  String electricEnergyConsumption;

  @override
  int electricRange;

  @override
  int engineCapacity;

  @override
  String engineCode;

  @override
  String exhaustEmissionLevel;

  @override
  double exhaustEmissionsNox;

  @override
  double exhaustEmissionsParticulates;

  @override
  String externalEuropeanCategoryCode;

  @override
  DateTime firstRegistrationDate;

  @override
  DateTime? firstRegistrationLuDate;

  @override
  int frontSeats;

  @override
  String fuel;

  @override
  String fuelCode;

  @override
  double fuelConsumption;

  @override
  int height;

  @override
  String indicationOfUse;

  @override
  String indicator4x4;

  @override
  bool leasing;

  @override
  int length;

  @override
  String manufacturerCode;

  @override
  String manufacturerWording;

  @override
  String massInRunningOrder;

  @override
  String massWltp;

  @override
  String maximumLadenMass;

  @override
  String maximumMassCombination;

  @override
  double maximumPower;

  @override
  String maximumTowableMassBrakelessTrailer;

  @override
  String maximumTowableMassCentreAxleTrailer;

  @override
  String maximumVerticalMassCouplingPoint;

  @override
  DateTime? offRoadDeclarationDate;

  @override
  String originCountry;

  @override
  DateTime? registrationCertificateDate;

  @override
  int simpleAxles;

  @override
  int sittingPlaces;

  @override
  int specificBackSeats;

  @override
  int specificFrontSeats;

  @override
  int standingPlaces;

  @override
  int tandemAxles;

  @override
  int tridemAxles;

  @override
  String type;

  @override
  String userInformation;

  @override
  String variant;

  @override
  String version;

  @override
  String wheelbase;

  @override
  int width;

  VehicleDto(
      {this.operationCode,
      required this.categoryCodeStatec,
      required this.europeanBodyworkCode,
      required this.bodyworkWording,
      required this.externalEuropeanCategoryCode,
      required this.color,
      required this.indicationOfUse,
      required this.originCountry,
      required this.manufacturerCode,
      required this.manufacturerWording,
      required this.type,
      required this.commercialName,
      required this.ecApprovalNumber,
      required this.variant,
      required this.version,
      required this.firstRegistrationDate,
      this.firstRegistrationLuDate,
      this.registrationCertificateDate,
      this.offRoadDeclarationDate,
      required this.massInRunningOrder,
      required this.maximumLadenMass,
      required this.maximumMassCombination,
      required this.maximumVerticalMassCouplingPoint,
      required this.maximumTowableMassBrakelessTrailer,
      required this.maximumTowableMassCentreAxleTrailer,
      required this.indicator4x4,
      required this.absIndicator,
      required this.asrIndicator,
      required this.frontSeats,
      required this.backSeats,
      required this.specificFrontSeats,
      required this.specificBackSeats,
      required this.standingPlaces,
      required this.sittingPlaces,
      required this.length,
      required this.width,
      required this.height,
      required this.simpleAxles,
      required this.tandemAxles,
      required this.tridemAxles,
      required this.wheelbase,
      required this.axleTrack1,
      required this.axleTrack2,
      required this.engineCode,
      required this.fuelCode,
      required this.fuel,
      required this.cylinders,
      required this.maximumPower,
      required this.engineCapacity,
      required this.userInformation,
      required this.co2Emissions,
      required this.fuelConsumption,
      required this.exhaustEmissionsParticulates,
      required this.exhaustEmissionsNox,
      required this.exhaustEmissionLevel,
      required this.massWltp,
      required this.co2EmissionsWltp,
      required this.co2EmissionsEcoWltp,
      required this.electricEnergyConsumption,
      required this.electricRange,
      required this.leasing});

  factory VehicleDto.fromDto(VehicleDao dao) {
    return VehicleDto(
        categoryCodeStatec: dao.categoryCodeStatec,
        europeanBodyworkCode: dao.europeanBodyworkCode,
        bodyworkWording: dao.bodyworkWording,
        externalEuropeanCategoryCode: dao.externalEuropeanCategoryCode,
        color: dao.color,
        indicationOfUse: dao.indicationOfUse,
        originCountry: dao.originCountry,
        manufacturerCode: dao.manufacturerCode,
        manufacturerWording: dao.manufacturerWording,
        type: dao.type,
        commercialName: dao.commercialName,
        ecApprovalNumber: dao.ecApprovalNumber,
        variant: dao.variant,
        version: dao.version,
        firstRegistrationDate: dao.firstRegistrationDate,
        massInRunningOrder: dao.massInRunningOrder,
        maximumLadenMass: dao.maximumLadenMass,
        maximumMassCombination: dao.maximumMassCombination,
        maximumVerticalMassCouplingPoint: dao.maximumVerticalMassCouplingPoint,
        maximumTowableMassBrakelessTrailer: dao.maximumTowableMassBrakelessTrailer,
        maximumTowableMassCentreAxleTrailer: dao.maximumTowableMassCentreAxleTrailer,
        indicator4x4: dao.indicator4x4,
        absIndicator: dao.absIndicator,
        asrIndicator: dao.asrIndicator,
        frontSeats: dao.frontSeats,
        backSeats: dao.backSeats,
        specificFrontSeats: dao.specificFrontSeats,
        specificBackSeats: dao.specificBackSeats,
        standingPlaces: dao.standingPlaces,
        sittingPlaces: dao.sittingPlaces,
        length: dao.length,
        width: dao.width,
        height: dao.height,
        simpleAxles: dao.simpleAxles,
        tandemAxles: dao.tandemAxles,
        tridemAxles: dao.tridemAxles,
        wheelbase: dao.wheelbase,
        axleTrack1: dao.axleTrack1,
        axleTrack2: dao.axleTrack2,
        engineCode: dao.engineCode,
        fuelCode: dao.fuelCode,
        fuel: dao.fuel,
        cylinders: dao.cylinders,
        maximumPower: dao.maximumPower,
        engineCapacity: dao.engineCapacity,
        userInformation: dao.userInformation,
        co2Emissions: dao.co2Emissions,
        fuelConsumption: dao.fuelConsumption,
        exhaustEmissionsParticulates: dao.exhaustEmissionsParticulates,
        exhaustEmissionsNox: dao.exhaustEmissionsNox,
        exhaustEmissionLevel: dao.exhaustEmissionLevel,
        massWltp: dao.massWltp,
        co2EmissionsWltp: dao.co2EmissionsWltp,
        co2EmissionsEcoWltp: dao.co2EmissionsEcoWltp,
        electricEnergyConsumption: dao.electricEnergyConsumption,
        electricRange: dao.electricRange,
        leasing: dao.leasing);
  }

  factory VehicleDto.fromJson(Map<String, dynamic> json) => _$VehicleDtoFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleDtoToJson(this);
}
