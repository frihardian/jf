import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transliteration.g.dart';

@JsonSerializable()
class Transliteration extends Equatable {
  final String? en;

  const Transliteration({this.en});

  factory Transliteration.fromJson(Map<String, dynamic> json) {
    return _$TransliterationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TransliterationToJson(this);

  Transliteration copyWith({
    String? en,
  }) {
    return Transliteration(
      en: en ?? this.en,
    );
  }

  @override
  List<Object?> get props => [en];
}
