import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:main/core/api/json.dart';

part 'page_dto.freezed.dart';
part 'page_dto.g.dart';

@freezed
class PageDto<T> with _$PageDto<T> {
  factory PageDto({required List<T> data, required PageMetaDto meta}) =
      _PageDto<T>;

  factory PageDto.parseApiResult(Json json, T Function(Json json) fromJson) {
    final rawData = json['results'];

    if (rawData is List<dynamic>) {
      return PageDto<T>(
        data: rawData
            .cast<Map<dynamic, dynamic>>()
            .map(Json.from)
            .map(fromJson)
            .toList(),
        meta: PageMetaDto.fromJson(json),
      );
    }
    throw Exception('parsing error');
  }
}

@freezed
class PageMetaDto with _$PageMetaDto {
  factory PageMetaDto({String? next, @Default(0) int count}) = _PageMetaDto;

  PageMetaDto._();

  factory PageMetaDto.fromJson(Map<String, dynamic> json) =>
      _$PageMetaDtoFromJson(json);

  bool get hasNext => next != null;

  bool get loading => hasNext;
}
