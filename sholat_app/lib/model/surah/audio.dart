import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'audio.g.dart';

@JsonSerializable()
class Audio extends Equatable {
  final String? primary;
  final List<String>? secondary;

  const Audio({this.primary, this.secondary});

  factory Audio.fromJson(Map<String, dynamic> json) => _$AudioFromJson(json);

  Map<String, dynamic> toJson() => _$AudioToJson(this);

  Audio copyWith({
    String? primary,
    List<String>? secondary,
  }) {
    return Audio(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
    );
  }

  @override
  List<Object?> get props => [primary, secondary];
}
