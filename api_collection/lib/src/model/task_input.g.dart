// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskInput _$TaskInputFromJson(Map<String, dynamic> json) => $checkedCreate(
      'TaskInput',
      json,
      ($checkedConvert) {
        final val = TaskInput(
          title: $checkedConvert('title', (v) => v as String?),
          completed: $checkedConvert('completed', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$TaskInputToJson(TaskInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('completed', instance.completed);
  return val;
}
