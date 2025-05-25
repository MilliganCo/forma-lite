// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'modifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Modifier _$ModifierFromJson(Map<String, dynamic> json) {
  return _Modifier.fromJson(json);
}

/// @nodoc
mixin _$Modifier {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Map<String, dynamic> get payload => throw _privateConstructorUsedError;

  /// Serializes this Modifier to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Modifier
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModifierCopyWith<Modifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModifierCopyWith<$Res> {
  factory $ModifierCopyWith(Modifier value, $Res Function(Modifier) then) =
      _$ModifierCopyWithImpl<$Res, Modifier>;
  @useResult
  $Res call({String id, String type, Map<String, dynamic> payload});
}

/// @nodoc
class _$ModifierCopyWithImpl<$Res, $Val extends Modifier>
    implements $ModifierCopyWith<$Res> {
  _$ModifierCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Modifier
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? type = null, Object? payload = null}) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String,
            payload:
                null == payload
                    ? _value.payload
                    : payload // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ModifierImplCopyWith<$Res>
    implements $ModifierCopyWith<$Res> {
  factory _$$ModifierImplCopyWith(
    _$ModifierImpl value,
    $Res Function(_$ModifierImpl) then,
  ) = __$$ModifierImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String type, Map<String, dynamic> payload});
}

/// @nodoc
class __$$ModifierImplCopyWithImpl<$Res>
    extends _$ModifierCopyWithImpl<$Res, _$ModifierImpl>
    implements _$$ModifierImplCopyWith<$Res> {
  __$$ModifierImplCopyWithImpl(
    _$ModifierImpl _value,
    $Res Function(_$ModifierImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Modifier
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? type = null, Object? payload = null}) {
    return _then(
      _$ModifierImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String,
        payload:
            null == payload
                ? _value._payload
                : payload // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ModifierImpl implements _Modifier {
  const _$ModifierImpl({
    required this.id,
    required this.type,
    required final Map<String, dynamic> payload,
  }) : _payload = payload;

  factory _$ModifierImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModifierImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  final Map<String, dynamic> _payload;
  @override
  Map<String, dynamic> get payload {
    if (_payload is EqualUnmodifiableMapView) return _payload;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_payload);
  }

  @override
  String toString() {
    return 'Modifier(id: $id, type: $type, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModifierImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._payload, _payload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    type,
    const DeepCollectionEquality().hash(_payload),
  );

  /// Create a copy of Modifier
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModifierImplCopyWith<_$ModifierImpl> get copyWith =>
      __$$ModifierImplCopyWithImpl<_$ModifierImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModifierImplToJson(this);
  }
}

abstract class _Modifier implements Modifier {
  const factory _Modifier({
    required final String id,
    required final String type,
    required final Map<String, dynamic> payload,
  }) = _$ModifierImpl;

  factory _Modifier.fromJson(Map<String, dynamic> json) =
      _$ModifierImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  Map<String, dynamic> get payload;

  /// Create a copy of Modifier
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModifierImplCopyWith<_$ModifierImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
