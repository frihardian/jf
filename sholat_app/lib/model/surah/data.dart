import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'verse.dart';

part 'data.g.dart';

@JsonSerializable()
class Data extends Equatable {
  final int? juz;
  final int? juzStartSurahNumber;
  final int? juzEndSurahNumber;
  final String? juzStartInfo;
  final String? juzEndInfo;
  final int? totalVerses;
  final List<Verse>? verses;

  const Data({
    this.juz,
    this.juzStartSurahNumber,
    this.juzEndSurahNumber,
    this.juzStartInfo,
    this.juzEndInfo,
    this.totalVerses,
    this.verses,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  Data copyWith({
    int? juz,
    int? juzStartSurahNumber,
    int? juzEndSurahNumber,
    String? juzStartInfo,
    String? juzEndInfo,
    int? totalVerses,
    List<Verse>? verses,
  }) {
    return Data(
      juz: juz ?? this.juz,
      juzStartSurahNumber: juzStartSurahNumber ?? this.juzStartSurahNumber,
      juzEndSurahNumber: juzEndSurahNumber ?? this.juzEndSurahNumber,
      juzStartInfo: juzStartInfo ?? this.juzStartInfo,
      juzEndInfo: juzEndInfo ?? this.juzEndInfo,
      totalVerses: totalVerses ?? this.totalVerses,
      verses: verses ?? this.verses,
    );
  }

  @override
  List<Object?> get props {
    return [
      juz,
      juzStartSurahNumber,
      juzEndSurahNumber,
      juzStartInfo,
      juzEndInfo,
      totalVerses,
      verses,
    ];
  }
}
