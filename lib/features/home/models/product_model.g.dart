// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      imageUrl: json['imageUrl'] as String,
      productName: json['productName'] as String,
      location: json['location'] as String,
      productStatus: json['productStatus'] as String,
      productCode: json['productCode'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'productName': instance.productName,
      'location': instance.location,
      'productStatus': instance.productStatus,
      'productCode': instance.productCode,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };
