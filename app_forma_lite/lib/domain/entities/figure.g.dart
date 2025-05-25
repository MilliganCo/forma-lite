// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'figure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FigureImpl _$$FigureImplFromJson(Map<String, dynamic> json) => _$FigureImpl(
      id: json['id'] as String,
      shape: json['shape'] as String,
      baseMaterial: json['baseMaterial'] as Map<String, dynamic>,
      rarity: $enumDecode(_$RarityEnumMap, json['rarity']),
    );

Map<String, dynamic> _$$FigureImplToJson(_$FigureImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shape': instance.shape,
      'baseMaterial': instance.baseMaterial,
      'rarity': _$RarityEnumMap[instance.rarity]!,
    };

const _$RarityEnumMap = {
  Rarity.common: 'common',
  Rarity.rareChromatic: 'rareChromatic',
  Rarity.rareNoise: 'rareNoise',
  Rarity.rareTransparent: 'rareTransparent',
  Rarity.rareDeformer: 'rareDeformer',
  Rarity.rareAudio: 'rareAudio',
};
