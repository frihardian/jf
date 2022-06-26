import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'id.g.dart';

@JsonSerializable()
class Id extends Equatable {
  final String? short;
  final String? long;

  const Id({this.short, this.long});

  factory Id.fromJson(Map<String, dynamic> json) => _$IdFromJson(json);

  Map<String, dynamic> toJson() => _$IdToJson(this);

  Id copyWith({
    String? short,
    String? long,
  }) {
    return Id(
      short: short ?? this.short,
      long: long ?? this.long,
    );
  }

  @override
  List<Object?> get props => [short, long];
}
