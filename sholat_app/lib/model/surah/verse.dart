import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'audio.dart';
import 'meta.dart';
import 'number.dart';
import 'tafsir.dart';
import 'text.dart';
import 'translation.dart';

part 'verse.g.dart';

@JsonSerializable()
class Verse extends Equatable {
  final Number? number;
  final Meta? meta;
  final Text? text;
  final Translation? translation;
  final Audio? audio;
  final Tafsir? tafsir;

  const Verse({
    this.number,
    this.meta,
    this.text,
    this.translation,
    this.audio,
    this.tafsir,
  });

  factory Verse.fromJson(Map<String, dynamic> json) => _$VerseFromJson(json);

  Map<String, dynamic> toJson() => _$VerseToJson(this);

  Verse copyWith({
    Number? number,
    Meta? meta,
    Text? text,
    Translation? translation,
    Audio? audio,
    Tafsir? tafsir,
  }) {
    return Verse(
      number: number ?? this.number,
      meta: meta ?? this.meta,
      text: text ?? this.text,
      translation: translation ?? this.translation,
      audio: audio ?? this.audio,
      tafsir: tafsir ?? this.tafsir,
    );
  }

  @override
  List<Object?> get props {
    return [
      number,
      meta,
      text,
      translation,
      audio,
      tafsir,
    ];
  }
}
