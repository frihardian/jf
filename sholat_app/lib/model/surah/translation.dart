import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'translation.g.dart';

@JsonSerializable()
class Translation extends Equatable {
  final String? en;
  final String? id;

  const Translation({this.en, this.id});

  factory Translation.fromJson(Map<String, dynamic> json) {
    return _$TranslationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TranslationToJson(this);

  Translation copyWith({
    String? en,
    String? id,
  }) {
    return Translation(
      en: en ?? this.en,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [en, id];
}
