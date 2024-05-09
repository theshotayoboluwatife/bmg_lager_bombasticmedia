import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class Product {
  final String imageUrl, productName, location, productStatus, productCode;
  final double longitude, latitude;

  Product({
    required this.imageUrl,
    required this.productName,
    required this.location,
    required this.productStatus,
    required this.productCode,
    required this.latitude,
    required this.longitude,
  }) ;

  // Add a factory constructor for JSON deserialization
  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  // Add a method to convert the object to JSON
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
