// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrackImpl _$$TrackImplFromJson(Map<String, dynamic> json) => _$TrackImpl(
      trackName: json['trackName'] as String,
      artistName: json['artistName'] as String,
      trackTimeMillis: json['trackTimeMillis'] as String,
      artworkUrl100: json['artworkUrl100'] as String,
    );

Map<String, dynamic> _$$TrackImplToJson(_$TrackImpl instance) =>
    <String, dynamic>{
      'trackName': instance.trackName,
      'artistName': instance.artistName,
      'trackTimeMillis': instance.trackTimeMillis,
      'artworkUrl100': instance.artworkUrl100,
    };
