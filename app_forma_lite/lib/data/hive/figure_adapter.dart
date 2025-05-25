import 'package:hive/hive.dart';
import '../../domain/entities/figure.dart';

part 'figure_adapter.g.dart';

@HiveType(typeId: 1)
enum RarityHive {
  @HiveField(0) common,
  @HiveField(1) rareChromatic,
  @HiveField(2) rareNoise,
  @HiveField(3) rareTransparent,
  @HiveField(4) rareDeformer,
  @HiveField(5) rareAudio,
}

@HiveType(typeId: 2)
class FigureHive extends HiveObject {
  @HiveField(0)
  late String id;
  @HiveField(1)
  late String shape;
  @HiveField(2)
  late Map<String, dynamic> baseMaterial;
  @HiveField(3)
  late RarityHive rarity;
}

extension FigureMapper on Figure {
  FigureHive toHive() => FigureHive()
    ..id = id
    ..shape = shape
    ..baseMaterial = baseMaterial
    ..rarity = RarityHive.values[rarity.index];
}

extension FigureHiveMapper on FigureHive {
  Figure toModel() => Figure(
        id: id,
        shape: shape,
        baseMaterial: baseMaterial,
        rarity: Rarity.values[rarity.index],
      );
}
