// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyModel _$CompanyModelFromJson(Map<String, dynamic> json) => CompanyModel(
      name: json['name'] as String,
      location: json['location'] as String,
      employees: (json['employees'] as List<dynamic>)
          .map((e) => EmployeeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CompanyModelToJson(CompanyModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'location': instance.location,
      'employees': instance.employees,
      'products': instance.products,
    };
