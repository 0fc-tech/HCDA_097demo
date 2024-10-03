import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'monster.freezed.dart';
part 'monster.g.dart';

@freezed
class Monster with _$Monster {
  const factory Monster({
     required int id,
     required String name,
     required String description,
     required String species,
     required String type,
  }) = _Monster;



  factory Monster.fromJson(Map<String, dynamic> json) =>
      _$MonsterFromJson(json);
}