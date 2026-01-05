// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PageDto<T> {
  List<T> get data => throw _privateConstructorUsedError;
  PageMetaDto get meta => throw _privateConstructorUsedError;

  /// Create a copy of PageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageDtoCopyWith<T, PageDto<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageDtoCopyWith<T, $Res> {
  factory $PageDtoCopyWith(PageDto<T> value, $Res Function(PageDto<T>) then) =
      _$PageDtoCopyWithImpl<T, $Res, PageDto<T>>;
  @useResult
  $Res call({List<T> data, PageMetaDto meta});

  $PageMetaDtoCopyWith<$Res> get meta;
}

/// @nodoc
class _$PageDtoCopyWithImpl<T, $Res, $Val extends PageDto<T>>
    implements $PageDtoCopyWith<T, $Res> {
  _$PageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null, Object? meta = null}) {
    return _then(
      _value.copyWith(
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as List<T>,
            meta: null == meta
                ? _value.meta
                : meta // ignore: cast_nullable_to_non_nullable
                      as PageMetaDto,
          )
          as $Val,
    );
  }

  /// Create a copy of PageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageMetaDtoCopyWith<$Res> get meta {
    return $PageMetaDtoCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PageDtoImplCopyWith<T, $Res>
    implements $PageDtoCopyWith<T, $Res> {
  factory _$$PageDtoImplCopyWith(
    _$PageDtoImpl<T> value,
    $Res Function(_$PageDtoImpl<T>) then,
  ) = __$$PageDtoImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> data, PageMetaDto meta});

  @override
  $PageMetaDtoCopyWith<$Res> get meta;
}

/// @nodoc
class __$$PageDtoImplCopyWithImpl<T, $Res>
    extends _$PageDtoCopyWithImpl<T, $Res, _$PageDtoImpl<T>>
    implements _$$PageDtoImplCopyWith<T, $Res> {
  __$$PageDtoImplCopyWithImpl(
    _$PageDtoImpl<T> _value,
    $Res Function(_$PageDtoImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of PageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null, Object? meta = null}) {
    return _then(
      _$PageDtoImpl<T>(
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<T>,
        meta: null == meta
            ? _value.meta
            : meta // ignore: cast_nullable_to_non_nullable
                  as PageMetaDto,
      ),
    );
  }
}

/// @nodoc

class _$PageDtoImpl<T> implements _PageDto<T> {
  _$PageDtoImpl({required final List<T> data, required this.meta})
    : _data = data;

  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final PageMetaDto meta;

  @override
  String toString() {
    return 'PageDto<$T>(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageDtoImpl<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_data),
    meta,
  );

  /// Create a copy of PageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageDtoImplCopyWith<T, _$PageDtoImpl<T>> get copyWith =>
      __$$PageDtoImplCopyWithImpl<T, _$PageDtoImpl<T>>(this, _$identity);
}

abstract class _PageDto<T> implements PageDto<T> {
  factory _PageDto({
    required final List<T> data,
    required final PageMetaDto meta,
  }) = _$PageDtoImpl<T>;

  @override
  List<T> get data;
  @override
  PageMetaDto get meta;

  /// Create a copy of PageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageDtoImplCopyWith<T, _$PageDtoImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

PageMetaDto _$PageMetaDtoFromJson(Map<String, dynamic> json) {
  return _PageMetaDto.fromJson(json);
}

/// @nodoc
mixin _$PageMetaDto {
  String? get next => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Serializes this PageMetaDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PageMetaDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageMetaDtoCopyWith<PageMetaDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageMetaDtoCopyWith<$Res> {
  factory $PageMetaDtoCopyWith(
    PageMetaDto value,
    $Res Function(PageMetaDto) then,
  ) = _$PageMetaDtoCopyWithImpl<$Res, PageMetaDto>;
  @useResult
  $Res call({String? next, int count});
}

/// @nodoc
class _$PageMetaDtoCopyWithImpl<$Res, $Val extends PageMetaDto>
    implements $PageMetaDtoCopyWith<$Res> {
  _$PageMetaDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PageMetaDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? next = freezed, Object? count = null}) {
    return _then(
      _value.copyWith(
            next: freezed == next
                ? _value.next
                : next // ignore: cast_nullable_to_non_nullable
                      as String?,
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PageMetaDtoImplCopyWith<$Res>
    implements $PageMetaDtoCopyWith<$Res> {
  factory _$$PageMetaDtoImplCopyWith(
    _$PageMetaDtoImpl value,
    $Res Function(_$PageMetaDtoImpl) then,
  ) = __$$PageMetaDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? next, int count});
}

/// @nodoc
class __$$PageMetaDtoImplCopyWithImpl<$Res>
    extends _$PageMetaDtoCopyWithImpl<$Res, _$PageMetaDtoImpl>
    implements _$$PageMetaDtoImplCopyWith<$Res> {
  __$$PageMetaDtoImplCopyWithImpl(
    _$PageMetaDtoImpl _value,
    $Res Function(_$PageMetaDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PageMetaDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? next = freezed, Object? count = null}) {
    return _then(
      _$PageMetaDtoImpl(
        next: freezed == next
            ? _value.next
            : next // ignore: cast_nullable_to_non_nullable
                  as String?,
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PageMetaDtoImpl extends _PageMetaDto {
  _$PageMetaDtoImpl({this.next, this.count = 0}) : super._();

  factory _$PageMetaDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageMetaDtoImplFromJson(json);

  @override
  final String? next;
  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'PageMetaDto(next: $next, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageMetaDtoImpl &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, next, count);

  /// Create a copy of PageMetaDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageMetaDtoImplCopyWith<_$PageMetaDtoImpl> get copyWith =>
      __$$PageMetaDtoImplCopyWithImpl<_$PageMetaDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageMetaDtoImplToJson(this);
  }
}

abstract class _PageMetaDto extends PageMetaDto {
  factory _PageMetaDto({final String? next, final int count}) =
      _$PageMetaDtoImpl;
  _PageMetaDto._() : super._();

  factory _PageMetaDto.fromJson(Map<String, dynamic> json) =
      _$PageMetaDtoImpl.fromJson;

  @override
  String? get next;
  @override
  int get count;

  /// Create a copy of PageMetaDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageMetaDtoImplCopyWith<_$PageMetaDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
