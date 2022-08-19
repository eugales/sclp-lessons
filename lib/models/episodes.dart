import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lessons2/models/info.dart';
import 'package:lessons2/models/item.dart';

part 'episodes.freezed.dart';
part 'episodes.g.dart';

@freezed
class Episode with _$Episode implements Item {
  factory Episode({
    required int id,
    required String name,
    @JsonKey(name: 'air_date') String? airDate,
    required String episode,
    List<String>? characters,
    required String url,
    required String created,
  }) = _Episode;

  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);
}

@freezed
class EpisodeResult with _$EpisodeResult {
  factory EpisodeResult({
    Info? info,
    List<EpisodeResult>? results,
  }) = _EpisodeResult;

  factory EpisodeResult.fromJson(Map<String, dynamic> json) =>
      _$EpisodeResultFromJson(json);
}
