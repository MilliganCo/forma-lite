// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'figure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FigureImpl _$$FigureImplFromJson(Map<String, dynamic> json) => _$FigureImpl(
  id: json['id'] as String,
  shape: json['shape'] as String,
  baseMaterial: json['baseMaterial'] as Map<String, dynamic>,
  rarity: json['rarity'] as String,
);

Map<String, dynamic> _$$FigureImplToJson(_$FigureImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shape': instance.shape,
      'baseMaterial': instance.baseMaterial,
      'rarity': instance.rarity,
    };
