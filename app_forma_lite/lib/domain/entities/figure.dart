import 'package:freezed_annotation/freezed_annotation.dart';

part 'figure.freezed.dart';
part 'figure.g.dart';

enum Rarity {
  common,
  rareChromatic,
  rareNoise,
  rareTransparent,
  rareDeformer,
  rareAudio,
}

@freezed
class Figure with _$Figure {
  const factory Figure({
    required String id,
    required String shape,
    required Map<String, dynamic> baseMaterial,
    required Rarity rarity,
  }) = _Figure;

  factory Figure.fromJson(Map<String, dynamic> json) =>
      _$FigureFromJson(json..['rarity'] = _rarityFromString(json['rarity']));

  static Rarity _rarityFromString(String v) =>
      Rarity.values.firstWhere((e) => e.name == v.replaceAll('rare_', 'rare'));
}
