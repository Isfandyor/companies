import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  String id;
  String name;
  double price;
  bool inStock;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.inStock,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return _$ProductModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ProductModelToJson(this);
  }
}
