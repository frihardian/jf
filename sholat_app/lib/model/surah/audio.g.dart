// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Audio _$AudioFromJson(Map<String, dynamic> json) => Audio(
      primary: json['primary'] as String?,
      secondary: (json['secondary'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AudioToJson(Audio instance) => <String, dynamic>{
      'primary': instance.primary,
      'secondary': instance.secondary,
    };
