// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'figure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Figure _$FigureFromJson(Map<String, dynamic> json) {
  return _Figure.fromJson(json);
}

/// @nodoc
mixin _$Figure {
  String get id => throw _privateConstructorUsedError;
  String get shape => throw _privateConstructorUsedError;
  Map<String, dynamic> get baseMaterial => throw _privateConstructorUsedError;
  String get rarity => throw _privateConstructorUsedError;

  /// Serializes this Figure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Figure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FigureCopyWith<Figure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FigureCopyWith<$Res> {
  factory $FigureCopyWith(Figure value, $Res Function(Figure) then) =
      _$FigureCopyWithImpl<$Res, Figure>;
  @useResult
  $Res call({
    String id,
    String shape,
    Map<String, dynamic> baseMaterial,
    String rarity,
  });
}

/// @nodoc
class _$FigureCopyWithImpl<$Res, $Val extends Figure>
    implements $FigureCopyWith<$Res> {
  _$FigureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Figure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? shape = null,
    Object? baseMaterial = null,
    Object? rarity = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            shape:
                null == shape
                    ? _value.shape
                    : shape // ignore: cast_nullable_to_non_nullable
                        as String,
            baseMaterial:
                null == baseMaterial
                    ? _value.baseMaterial
                    : baseMaterial // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>,
            rarity:
                null == rarity
                    ? _value.rarity
                    : rarity // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FigureImplCopyWith<$Res> implements $FigureCopyWith<$Res> {
  factory _$$FigureImplCopyWith(
    _$FigureImpl value,
    $Res Function(_$FigureImpl) then,
  ) = __$$FigureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String shape,
    Map<String, dynamic> baseMaterial,
    String rarity,
  });
}

/// @nodoc
class __$$FigureImplCopyWithImpl<$Res>
    extends _$FigureCopyWithImpl<$Res, _$FigureImpl>
    implements _$$FigureImplCopyWith<$Res> {
  __$$FigureImplCopyWithImpl(
    _$FigureImpl _value,
    $Res Function(_$FigureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Figure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? shape = null,
    Object? baseMaterial = null,
    Object? rarity = null,
  }) {
    return _then(
      _$FigureImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        shape:
            null == shape
                ? _value.shape
                : shape // ignore: cast_nullable_to_non_nullable
                    as String,
        baseMaterial:
            null == baseMaterial
                ? _value._baseMaterial
                : baseMaterial // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>,
        rarity:
            null == rarity
                ? _value.rarity
                : rarity // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FigureImpl implements _Figure {
  const _$FigureImpl({
    required this.id,
    required this.shape,
    required final Map<String, dynamic> baseMaterial,
    required this.rarity,
  }) : _baseMaterial = baseMaterial;

  factory _$FigureImpl.fromJson(Map<String, dynamic> json) =>
      _$$FigureImplFromJson(json);

  @override
  final String id;
  @override
  final String shape;
  final Map<String, dynamic> _baseMaterial;
  @override
  Map<String, dynamic> get baseMaterial {
    if (_baseMaterial is EqualUnmodifiableMapView) return _baseMaterial;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_baseMaterial);
  }

  @override
  final String rarity;

  @override
  String toString() {
    return 'Figure(id: $id, shape: $shape, baseMaterial: $baseMaterial, rarity: $rarity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FigureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            const DeepCollectionEquality().equals(
              other._baseMaterial,
              _baseMaterial,
            ) &&
            (identical(other.rarity, rarity) || other.rarity == rarity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    shape,
    const DeepCollectionEquality().hash(_baseMaterial),
    rarity,
  );

  /// Create a copy of Figure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FigureImplCopyWith<_$FigureImpl> get copyWith =>
      __$$FigureImplCopyWithImpl<_$FigureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FigureImplToJson(this);
  }
}

abstract class _Figure implements Figure {
  const factory _Figure({
    required final String id,
    required final String shape,
    required final Map<String, dynamic> baseMaterial,
    required final String rarity,
  }) = _$FigureImpl;

  factory _Figure.fromJson(Map<String, dynamic> json) = _$FigureImpl.fromJson;

  @override
  String get id;
  @override
  String get shape;
  @override
  Map<String, dynamic> get baseMaterial;
  @override
  String get rarity;

  /// Create a copy of Figure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FigureImplCopyWith<_$FigureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
