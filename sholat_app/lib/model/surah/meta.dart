import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'sajda.dart';

part 'meta.g.dart';

@JsonSerializable()
class Meta extends Equatable {
  final int? juz;
  final int? page;
  final int? manzil;
  final int? ruku;
  final int? hizbQuarter;
  final Sajda? sajda;

  const Meta({
    this.juz,
    this.page,
    this.manzil,
    this.ruku,
    this.hizbQuarter,
    this.sajda,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);

  Meta copyWith({
    int? juz,
    int? page,
    int? manzil,
    int? ruku,
    int? hizbQuarter,
    Sajda? sajda,
  }) {
    return Meta(
      juz: juz ?? this.juz,
      page: page ?? this.page,
      manzil: manzil ?? this.manzil,
      ruku: ruku ?? this.ruku,
      hizbQuarter: hizbQuarter ?? this.hizbQuarter,
      sajda: sajda ?? this.sajda,
    );
  }

  @override
  List<Object?> get props {
    return [
      juz,
      page,
      manzil,
      ruku,
      hizbQuarter,
      sajda,
    ];
  }
}
