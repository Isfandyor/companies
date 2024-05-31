// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmployeeModel _$EmployeeModelFromJson(Map<String, dynamic> json) =>
    EmployeeModel(
      id: json['id'] as String,
      name: json['name'] as String,
      age: (json['age'] as num).toInt(),
      postion: json['postion'] as String,
      skills:
          (json['skills'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$EmployeeModelToJson(EmployeeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'postion': instance.postion,
      'skills': instance.skills,
    };
