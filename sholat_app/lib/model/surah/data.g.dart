// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      juz: json['juz'] as int?,
      juzStartSurahNumber: json['juzStartSurahNumber'] as int?,
      juzEndSurahNumber: json['juzEndSurahNumber'] as int?,
      juzStartInfo: json['juzStartInfo'] as String?,
      juzEndInfo: json['juzEndInfo'] as String?,
      totalVerses: json['totalVerses'] as int?,
      verses: (json['verses'] as List<dynamic>?)
          ?.map((e) => Verse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'juz': instance.juz,
      'juzStartSurahNumber': instance.juzStartSurahNumber,
      'juzEndSurahNumber': instance.juzEndSurahNumber,
      'juzStartInfo': instance.juzStartInfo,
      'juzEndInfo': instance.juzEndInfo,
      'totalVerses': instance.totalVerses,
      'verses': instance.verses,
    };
