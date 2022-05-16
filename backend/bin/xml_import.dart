import 'dart:convert';
import 'dart:io';

import 'package:automobile_lu_backend/config/environment_config.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:xml/src/xml/nodes/node.dart';
import 'package:xml/xml_events.dart';

Future<void> main(List<String> arguments) async {
  final environmentConfig = EnvironmentConfig();

  var con = Db(environmentConfig.mongoUrl);

  await con.open();

  Future<bool> addToMongo(XmlNode node) async {
    var car = <String, dynamic>{};
    for (var e in node.childElements) {
      switch (e.name.local) {
        case 'OPE':
          car['OPE'] = e.innerText;
          break;
        case 'CATSTC':
          car['CATSTC'] = e.innerText;
          break;
        case 'CODCAR':
          car['CODCAR'] = e.innerText;
          break;
        case 'LIBCAR':
          car['LIBCAR'] = e.innerText;
          break;
        case 'CATEU':
          car['CATEU'] = e.innerText;
          break;
        case 'COUL':
          car['COUL'] = e.innerText;
          break;
        case 'INDUTI':
          car['INDUTI'] = e.innerText;
          break;
        case 'PAYPVN':
          car['PAYPVN'] = e.innerText;
          break;
        case 'CODMRQ':
          car['CODMRQ'] = e.innerText;
          break;
        case 'LIBMRQ':
          car['LIBMRQ'] = e.innerText;
          break;
        case 'TYPUSI':
          car['TYPUSI'] = e.innerText;
          break;
        case 'TYPCOM':
          car['TYPCOM'] = e.innerText;
          break;
        case 'PVRNUM':
          car['PVRNUM'] = e.innerText;
          break;
        case 'PVRVAR':
          car['PVRVAR'] = e.innerText;
          break;
        case 'PVRVER':
          car['PVRVER'] = e.innerText;
          break;
        case 'DATCIRPRM':
          car['DATCIRPRM'] = e.innerText.isNotEmpty ? DateTime.parse(e.innerText) : null;
          break;
        case 'DATCIR_GD':
          car['DATCIR_GD'] = e.innerText.isNotEmpty ? DateTime.parse(e.innerText) : null;
          break;
        case 'DATCIR':
          car['DATCIR'] = e.innerText.isNotEmpty ? DateTime.parse(e.innerText) : null;
          break;
        case 'DATHORCIR':
          car['DATHORCIR'] = e.innerText.isNotEmpty ? DateTime.parse(e.innerText) : null;
          break;
        case 'MVID':
          car['MVID'] = e.innerText;
          break;
        case 'MMA':
          car['MMA'] = e.innerText;
          break;
        case 'MMAENS':
          car['MMAENS'] = e.innerText;
          break;
        case 'MMAATT':
          car['MMAATT'] = e.innerText;
          break;
        case 'MMARSF':
          car['MMARSF'] = e.innerText;
          break;
        case 'MMARAF':
          car['MMARAF'] = e.innerText;
          break;
        case 'I4X4':
          car['I4X4'] = e.innerText;
          break;
        case 'ABS':
          car['ABS'] = e.innerText;
          break;
        case 'ASR':
          car['ASR'] = e.innerText;
          break;
        case 'PLAAVA':
          car['PLAAVA'] = int.tryParse(e.innerText) ?? 0;
          break;
        case 'PLAARR':
          car['PLAARR'] = int.tryParse(e.innerText) ?? 0;
          break;
        case 'PLASAV':
          car['PLASAV'] = int.tryParse(e.innerText) ?? 0;
          break;
        case 'PLASAR':
          car['PLASAR'] = int.tryParse(e.innerText) ?? 0;
          break;
        case 'PLADEB':
          car['PLADEB'] = int.tryParse(e.innerText) ?? 0;
          break;
        case 'PLAASS':
          car['PLAASS'] = int.tryParse(e.innerText) ?? 0;
          break;
        case 'LON':
          car['LON'] = int.tryParse(e.innerText) ?? 0;
          break;
        case 'LAR':
          car['LAR'] = int.tryParse(e.innerText) ?? 0;
          break;
        case 'HAU':
          car['HAU'] = int.tryParse(e.innerText) ?? 0;
          break;
        case 'ESSIM':
          car['ESSIM'] = int.tryParse(e.innerText) ?? 0;
          break;
        case 'ESTAN':
          car['ESTAN'] = int.tryParse(e.innerText) ?? 0;
          break;
        case 'ESTRI':
          car['ESTRI'] = int.tryParse(e.innerText) ?? 0;
          break;
        case 'EMPMAX':
          car['EMPMAX'] = e.innerText;
          break;
        case 'LARES1':
          car['LARES1'] = e.innerText;
          break;
        case 'LARES2':
          car['LARES2'] = e.innerText;
          break;
        case 'TYPMOT':
          car['TYPMOT'] = e.innerText;
          break;
        case 'CODCRB':
          car['CODCRB'] = e.innerText;
          break;
        case 'LIBCRB':
          car['LIBCRB'] = e.innerText;
          break;
        case 'NBRCYL':
          car['NBRCYL'] = int.tryParse(e.innerText) ?? 0;
          break;
        case 'PKW':
          car['PKW'] = double.tryParse(e.innerText) ?? 0;
          break;
        case 'CYD':
          car['CYD'] = int.tryParse(e.innerText) ?? 0;
          break;
        case 'INFOUTI':
          car['INFOUTI'] = e.innerText;
          break;
        case 'INFCO2':
          car['INFCO2'] = int.tryParse(e.innerText) ?? 0;
          break;
        case 'L100KM':
          car['L100KM'] = double.tryParse(e.innerText) ?? 0;
          break;
        case 'INFPARTICULE':
          car['INFPARTICULE'] = double.tryParse(e.innerText) ?? 0;
          break;
        case 'INFNOX':
          car['INFNOX'] = double.tryParse(e.innerText) ?? 0;
          break;
        case 'EUNORM':
          car['EUNORM'] = e.innerText;
          break;
        case 'mWLTP':
          car['mWLTP'] = e.innerText;
          break;
        case 'CO2WLTP':
          car['CO2WLTP'] = e.innerText;
          break;
        case 'eWLTP':
          car['eWLTP'] = e.innerText;
          break;
        case 'CONSELEC':
          car['CONSELEC'] = e.innerText;
          break;
        case 'AUTOELEC':
          car['AUTOELEC'] = int.tryParse(e.innerText) ?? 0;
          break;
        case 'LO':
          car['LO'] = e.innerText == '1';
          break;
        default:
          throw Exception('unknown type: ${e.name.local}');
      }
    }
    await con.collection('vehicle').insert(car);

    return true;
  }

  print('Drop Collection...');
  con.dropCollection('vehicle');

  final file = File('/Users/qdart/projects/flutter/automobile_lu/automobile_lu/data/parc-automobile-202205.xml');
  //final file = File('/Users/qdart/projects/flutter/automobile_lu/automobile_lu/data/parc-automobile-sample.xml');

  print('Import Collection...');
  var insert = await file
      .openRead()
      .transform(Latin1Decoder())
      .toXmlEvents()
      .normalizeEvents()
      .selectSubtreeEvents((event) => event.name == 'VEHICLE')
      .toXmlNodes()
      .expand((nodes) => nodes)
      .map((node) async => await addToMongo(node))
      .toList();
  print('Data loaded...');
  await Future.wait(insert).then((value) async => await con.close());
  print('Import finished');
}
