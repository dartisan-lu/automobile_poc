part of 'vehicle_type_dto.dart';

const fr = {
  '0': 'Sans code',
  '1': 'Cyclomoteur',
  '2': 'Motocycle',
  '5': 'Voiture particulière',
  '6': 'Voiture à usage mixte',
  '7': 'Véhicule utilitaire',
  '9': 'Autobus - Autocar',
  '11': 'Camionnette',
  '12': 'Camion',
  '21': 'Tracteur routier',
  '29': 'Véhicule spécial',
  '31': 'Tracteur agricole',
  '32': 'Machine agricole',
  '39': 'Auto véhicule automoteur',
  '41': 'Remorque (marchandises)',
  '42': 'Semi-remorque',
  '51': 'Tricycle',
  '52': 'Quadricycle',
  '53': 'Quadricycle léger',
  '59': 'Autre remorque'
};

const en = {
  '0': 'Codeless',
  '1': 'Moped',
  '2': 'Motorcycle',
  '5': 'Private car',
  '6': 'Vehicles intended for mixed use',
  '7': 'Utility vehicle',
  '9': 'Bus, coach',
  '11': 'Van',
  '12': 'Lorry',
  '21': 'Tractor',
  '29': 'Special Vehicle',
  '31': 'Agricultural Tractor',
  '32': 'Agricultural Machine',
  '39': 'Other Vehicle',
  '41': 'Trailer (Cargo)',
  '42': 'Articulated Trailer',
  '51': 'Trike',
  '52': 'Quad Bike',
  '53': 'Lightweight Quad Bike',
  '59': 'Other trailers'
};

String _translate(String local, String code) {
  switch (local) {
    case 'fr':
      return fr[code] ?? 'Unknown code $code';
    default:
      return en[code] ?? 'Unknown code $code';
  }
}
