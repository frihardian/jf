import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'transliteration.dart';

part 'text.g.dart';

@JsonSerializable()
class Text extends Equatable {
  final String? arab;
  final Transliteration? transliteration;

  const Text({this.arab, this.transliteration});

  factory Text.fromJson(Map<String, dynamic> json) => _$TextFromJson(json);

  Map<String, dynamic> toJson() => _$TextToJson(this);

  Text copyWith({
    String? arab,
    Transliteration? transliteration,
  }) {
    return Text(
      arab: arab ?? this.arab,
      transliteration: transliteration ?? this.transliteration,
    );
  }

  @override
  List<Object?> get props => [arab, transliteration];
}
