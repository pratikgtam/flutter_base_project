// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PageMetaDtoImpl _$$PageMetaDtoImplFromJson(Map<String, dynamic> json) =>
    _$PageMetaDtoImpl(
      next: json['next'] as String?,
      count: (json['count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PageMetaDtoImplToJson(_$PageMetaDtoImpl instance) =>
    <String, dynamic>{'next': instance.next, 'count': instance.count};
