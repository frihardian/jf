import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'number.g.dart';

@JsonSerializable()
class Number extends Equatable {
  final int? inQuran;
  final int? inSurah;

  const Number({this.inQuran, this.inSurah});

  factory Number.fromJson(Map<String, dynamic> json) {
    return _$NumberFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NumberToJson(this);

  Number copyWith({
    int? inQuran,
    int? inSurah,
  }) {
    return Number(
      inQuran: inQuran ?? this.inQuran,
      inSurah: inSurah ?? this.inSurah,
    );
  }

  @override
  List<Object?> get props => [inQuran, inSurah];
}
