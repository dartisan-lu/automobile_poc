import 'package:automobile_lu_common/model/vehicle_base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle_dao.g.dart';

@JsonSerializable()
class VehicleDao implements VehicleBase {
  @override
  @JsonKey(name: 'OPE')
  String? operationCode;

  @override
  @JsonKey(name: 'CATSTC')
  String categoryCodeStatec;

  @override
  @JsonKey(name: 'CODCAR')
  String europeanBodyworkCode;

  @override
  @JsonKey(name: 'LIBCAR')
  String bodyworkWording;

  @override
  @JsonKey(name: 'CATEU')
  String externalEuropeanCategoryCode;

  @override
  @JsonKey(name: 'COUL')
  String color;

  @override
  @JsonKey(name: 'INDUTI')
  String indicationOfUse;

  @override
  @JsonKey(name: 'PAYPVN')
  String originCountry;

  @override
  @JsonKey(name: 'CODMRQ')
  String manufacturerCode;

  @override
  @JsonKey(name: 'LIBMRQ')
  String manufacturerWording;

  @override
  @JsonKey(name: 'TYPUSI')
  String type;

  @override
  @JsonKey(name: 'TYPCOM')
  String commercialName;

  @override
  @JsonKey(name: 'PVRNUM')
  String ecApprovalNumber;

  @override
  @JsonKey(name: 'PVRVAR')
  String variant;

  @override
  @JsonKey(name: 'PVRVER')
  String version;

  @override
  @JsonKey(name: 'DATCIRPRM', fromJson: _dateFromJson, toJson: _dateToJson)
  DateTime firstRegistrationDate;

  @override
  @JsonKey(name: 'DATCIR_GD', fromJson: _dateNullFromJson, toJson: _dateNullToJson)
  DateTime? firstRegistrationLuDate;

  @override
  @JsonKey(name: 'DATCIR', fromJson: _dateNullFromJson, toJson: _dateNullToJson)
  DateTime? registrationCertificateDate;

  @override
  @JsonKey(name: 'DATHORCIR', fromJson: _dateNullFromJson, toJson: _dateNullToJson)
  DateTime? offRoadDeclarationDate;

  @override
  @JsonKey(name: 'MVID')
  String massInRunningOrder;

  @override
  @JsonKey(name: 'MMA')
  String maximumLadenMass;

  @override
  @JsonKey(name: 'MMAENS')
  String maximumMassCombination;

  @override
  @JsonKey(name: 'MMAATT')
  String maximumVerticalMassCouplingPoint;

  @override
  @JsonKey(name: 'MMARSF')
  String maximumTowableMassBrakelessTrailer;

  @override
  @JsonKey(name: 'MMARAF')
  String maximumTowableMassCentreAxleTrailer;

  @override
  @JsonKey(name: 'I4X4')
  String indicator4x4;

  @override
  @JsonKey(name: 'ABS')
  String absIndicator;

  @override
  @JsonKey(name: 'ASR')
  String asrIndicator;

  @override
  @JsonKey(name: 'PLAAVA', fromJson: _intFromJson, toJson: _intToJson)
  int frontSeats;

  @override
  @JsonKey(name: 'PLAARR', fromJson: _intFromJson, toJson: _intToJson)
  int backSeats;

  @override
  @JsonKey(name: 'PLASAV', fromJson: _intFromJson, toJson: _intToJson)
  int specificFrontSeats;

  @override
  @JsonKey(name: 'PLASAR', fromJson: _intFromJson, toJson: _intToJson)
  int specificBackSeats;

  @override
  @JsonKey(name: 'PLADEB', fromJson: _intFromJson, toJson: _intToJson)
  int standingPlaces;

  @override
  @JsonKey(name: 'PLAASS', fromJson: _intFromJson, toJson: _intToJson)
  int sittingPlaces;

  @override
  @JsonKey(name: 'LON', fromJson: _intFromJson, toJson: _intToJson)
  int length;

  @override
  @JsonKey(name: 'LAR', fromJson: _intFromJson, toJson: _intToJson)
  int width;

  @override
  @JsonKey(name: 'HAU', fromJson: _intFromJson, toJson: _intToJson)
  int height;

  @override
  @JsonKey(name: 'ESSIM', fromJson: _intFromJson, toJson: _intToJson)
  int simpleAxles;

  @override
  @JsonKey(name: 'ESTAN', fromJson: _intFromJson, toJson: _intToJson)
  int tandemAxles;

  @override
  @JsonKey(name: 'ESTRI', fromJson: _intFromJson, toJson: _intToJson)
  int tridemAxles;

  @override
  @JsonKey(name: 'EMPMAX')
  String wheelbase;

  @override
  @JsonKey(name: 'LARES1')
  String axleTrack1;

  @override
  @JsonKey(name: 'LARES2')
  String axleTrack2;

  @override
  @JsonKey(name: 'TYPMOT')
  String engineCode;

  @override
  @JsonKey(name: 'CODCRB')
  String fuelCode;

  @override
  @JsonKey(name: 'LIBCRB')
  String fuel;

  @override
  @JsonKey(name: 'NBRCYL', fromJson: _intFromJson, toJson: _intToJson)
  int cylinders;

  @override
  @JsonKey(name: 'PKW', fromJson: _doubleFromJson, toJson: _doubleToJson)
  double maximumPower;

  @override
  @JsonKey(name: 'CYD', fromJson: _intFromJson, toJson: _intToJson)
  int engineCapacity;

  @override
  @JsonKey(name: 'INFOUTI')
  String userInformation;

  @override
  @JsonKey(name: 'INFCO2', fromJson: _intFromJson, toJson: _intToJson)
  int co2Emissions;

  @override
  @JsonKey(name: 'L100KM', fromJson: _doubleFromJson, toJson: _doubleToJson)
  double fuelConsumption;

  @override
  @JsonKey(name: 'INFPARTICULE', fromJson: _doubleFromJson, toJson: _doubleToJson)
  double exhaustEmissionsParticulates;

  @override
  @JsonKey(name: 'INFNOX', fromJson: _doubleFromJson, toJson: _doubleToJson)
  double exhaustEmissionsNox;

  @override
  @JsonKey(name: 'EUNORM')
  String exhaustEmissionLevel;

  @override
  @JsonKey(name: 'mWLTP')
  String massWltp;

  @override
  @JsonKey(name: 'CO2WLTP')
  String co2EmissionsWltp;

  @override
  @JsonKey(name: 'eWLTP')
  String co2EmissionsEcoWltp;

  @override
  @JsonKey(name: 'CONSELEC')
  String electricEnergyConsumption;

  @override
  @JsonKey(name: 'AUTOELEC', fromJson: _intFromJson, toJson: _intToJson)
  int electricRange;

  @override
  @JsonKey(name: 'LO', fromJson: _boolFromJson, toJson: _boolToJson)
  bool leasing;

  VehicleDao(
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

  factory VehicleDao.fromJson(Map<String, dynamic> json) => _$VehicleDaoFromJson(json);

  static DateTime? _dateNullFromJson(DateTime? val) => val;

  static DateTime? _dateNullToJson(DateTime? val) => val;

  static DateTime _dateFromJson(DateTime val) => val;

  static DateTime _dateToJson(DateTime val) => val;

  static int _intFromJson(int val) => val;

  static int _intToJson(int val) => val;

  static double _doubleFromJson(num val) => val.toDouble();

  static double _doubleToJson(num val) => val.toDouble();

  static bool _boolFromJson(bool val) => val;

  static bool _boolToJson(bool val) => val;

  Map<String, dynamic> toJson() => _$VehicleDaoToJson(this);
}
