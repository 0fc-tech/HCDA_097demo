// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonsterImpl _$$MonsterImplFromJson(Map<String, dynamic> json) =>
    _$MonsterImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      species: json['species'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$MonsterImplToJson(_$MonsterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'species': instance.species,
      'type': instance.type,
    };