// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'figure_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FigureHiveAdapter extends TypeAdapter<FigureHive> {
  @override
  final int typeId = 2;

  @override
  FigureHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FigureHive()
      ..id = fields[0] as String
      ..shape = fields[1] as String
      ..baseMaterial = (fields[2] as Map).cast<String, dynamic>()
      ..rarity = fields[3] as RarityHive;
  }

  @override
  void write(BinaryWriter writer, FigureHive obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.shape)
      ..writeByte(2)
      ..write(obj.baseMaterial)
      ..writeByte(3)
      ..write(obj.rarity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FigureHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RarityHiveAdapter extends TypeAdapter<RarityHive> {
  @override
  final int typeId = 1;

  @override
  RarityHive read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return RarityHive.common;
      case 1:
        return RarityHive.rareChromatic;
      case 2:
        return RarityHive.rareNoise;
      case 3:
        return RarityHive.rareTransparent;
      case 4:
        return RarityHive.rareDeformer;
      case 5:
        return RarityHive.rareAudio;
      default:
        return RarityHive.common;
    }
  }

  @override
  void write(BinaryWriter writer, RarityHive obj) {
    switch (obj) {
      case RarityHive.common:
        writer.writeByte(0);
        break;
      case RarityHive.rareChromatic:
        writer.writeByte(1);
        break;
      case RarityHive.rareNoise:
        writer.writeByte(2);
        break;
      case RarityHive.rareTransparent:
        writer.writeByte(3);
        break;
      case RarityHive.rareDeformer:
        writer.writeByte(4);
        break;
      case RarityHive.rareAudio:
        writer.writeByte(5);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RarityHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
