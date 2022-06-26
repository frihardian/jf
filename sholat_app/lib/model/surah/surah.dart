import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'surah.g.dart';

@JsonSerializable()
class Surah extends Equatable {
  final int? code;
  final String? status;
  final String? message;
  final Data? data;

  const Surah({this.code, this.status, this.message, this.data});

  factory Surah.fromJson(Map<String, dynamic> json) => _$SurahFromJson(json);

  Map<String, dynamic> toJson() => _$SurahToJson(this);

  Surah copyWith({
    int? code,
    String? status,
    String? message,
    Data? data,
  }) {
    return Surah(
      code: code ?? this.code,
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  @override
  List<Object?> get props => [code, status, message, data];
}
