// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Text _$TextFromJson(Map<String, dynamic> json) => Text(
      arab: json['arab'] as String?,
      transliteration: json['transliteration'] == null
          ? null
          : Transliteration.fromJson(
              json['transliteration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TextToJson(Text instance) => <String, dynamic>{
      'arab': instance.arab,
      'transliteration': instance.transliteration,
    };
