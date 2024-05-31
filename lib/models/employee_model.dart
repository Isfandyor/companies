import 'package:json_annotation/json_annotation.dart';

part 'employee_model.g.dart';

@JsonSerializable()
class EmployeeModel {
  String id;
  String name;
  int age;
  String postion;
  List<String> skills;

  EmployeeModel({
    required this.id,
    required this.name,
    required this.age,
    required this.postion,
    required this.skills,
  });

  factory EmployeeModel.fromJson(Map<String, dynamic> json) {
    return _$EmployeeModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$EmployeeModelToJson(this);
  }
}
