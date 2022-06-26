import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sajda.g.dart';

@JsonSerializable()
class Sajda extends Equatable {
  final bool? recommended;
  final bool? obligatory;

  const Sajda({this.recommended, this.obligatory});

  factory Sajda.fromJson(Map<String, dynamic> json) => _$SajdaFromJson(json);

  Map<String, dynamic> toJson() => _$SajdaToJson(this);

  Sajda copyWith({
    bool? recommended,
    bool? obligatory,
  }) {
    return Sajda(
      recommended: recommended ?? this.recommended,
      obligatory: obligatory ?? this.obligatory,
    );
  }

  @override
  List<Object?> get props => [recommended, obligatory];
}
