import 'package:freezed_annotation/freezed_annotation.dart';

part 'figure.freezed.dart';
part 'figure.g.dart';

@freezed
class Figure with _$Figure {
  const factory Figure({
    required String id,
    required String shape,
    required Map<String, dynamic> baseMaterial,
    required String rarity,
  }) = _Figure;

  factory Figure.fromJson(Map<String, dynamic> json) => _$FigureFromJson(json);
}
