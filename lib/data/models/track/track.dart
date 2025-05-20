import 'package:freezed_annotation/freezed_annotation.dart';

part "track.freezed.dart";
part "track.g.dart";

@freezed
class Track with _$Track {
  const factory Track({
    required String trackName,
    required String artistName,
    required String trackTimeMillis,
    required String artworkUrl100,
  }) = _Track;

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);
}
