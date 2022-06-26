// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Verse _$VerseFromJson(Map<String, dynamic> json) => Verse(
      number: json['number'] == null
          ? null
          : Number.fromJson(json['number'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : Text.fromJson(json['text'] as Map<String, dynamic>),
      translation: json['translation'] == null
          ? null
          : Translation.fromJson(json['translation'] as Map<String, dynamic>),
      audio: json['audio'] == null
          ? null
          : Audio.fromJson(json['audio'] as Map<String, dynamic>),
      tafsir: json['tafsir'] == null
          ? null
          : Tafsir.fromJson(json['tafsir'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VerseToJson(Verse instance) => <String, dynamic>{
      'number': instance.number,
      'meta': instance.meta,
      'text': instance.text,
      'translation': instance.translation,
      'audio': instance.audio,
      'tafsir': instance.tafsir,
    };
