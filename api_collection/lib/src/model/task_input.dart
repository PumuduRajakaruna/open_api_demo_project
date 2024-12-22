//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'task_input.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TaskInput {
  /// Returns a new [TaskInput] instance.
  TaskInput({
    this.title,
    this.completed,
  });

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
      other is TaskInput &&
          other.title == title &&
          other.completed == completed;

  @override
  int get hashCode => title.hashCode + completed.hashCode;

  factory TaskInput.fromJson(Map<String, dynamic> json) =>
      _$TaskInputFromJson(json);

  Map<String, dynamic> toJson() => _$TaskInputToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
