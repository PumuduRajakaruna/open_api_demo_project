//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'task.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Task {
  /// Returns a new [Task] instance.
  Task({
    this.id,
    this.title,
    this.completed,
  });

  @JsonKey(
    name: r'id',
    required: false,
    includeIfNull: false,
  )
  final int? id;

  @JsonKey(
    name: r'title',
    required: false,
    includeIfNull: false,
  )
  final String? title;

  @JsonKey(
    name: r'completed',
    required: false,
    includeIfNull: false,
  )
  final bool? completed;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Task &&
          other.id == id &&
          other.title == title &&
          other.completed == completed;

  @override
  int get hashCode => id.hashCode + title.hashCode + completed.hashCode;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  Map<String, dynamic> toJson() => _$TaskToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
