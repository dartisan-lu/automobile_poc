import 'package:json_annotation/json_annotation.dart';

part 'count_dao.g.dart';

@JsonSerializable()
class CountDao {
  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'count')
  int count;

  CountDao({required this.id, required this.count});

  factory CountDao.fromJson(Map<String, dynamic> json) => _$CountDaoFromJson(json);

  Map<String, dynamic> toJson() => _$CountDaoToJson(this);
}
