import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'id.dart';

part 'tafsir.g.dart';

@JsonSerializable()
class Tafsir extends Equatable {
  final Id? id;

  const Tafsir({this.id});

  factory Tafsir.fromJson(Map<String, dynamic> json) {
    return _$TafsirFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TafsirToJson(this);

  Tafsir copyWith({
    Id? id,
  }) {
    return Tafsir(
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [id];
}
