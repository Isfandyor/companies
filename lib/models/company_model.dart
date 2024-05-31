import 'package:companies/models/employee_model.dart';
import 'package:companies/models/product_model.dart';

import 'package:json_annotation/json_annotation.dart';

part 'company_model.g.dart';

@JsonSerializable()
class CompanyModel {
  String name;
  String location;
  List<EmployeeModel> employees;
  List<ProductModel> products;

  CompanyModel({
    required this.name,
    required this.location,
    required this.employees,
    required this.products,
  });

  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    return _$CompanyModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CompanyModelToJson(this);
  }
}
