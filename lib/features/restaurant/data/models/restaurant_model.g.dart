// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RestaurantModel _$$_RestaurantModelFromJson(Map<String, dynamic> json) =>
    _$_RestaurantModel(
      id: json['id'] as int,
      title: json['title'] as String?,
      description: json['description'] as String?,
      enabled: json['enabled'] as int?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      resourceUrl: json['resource_url'] as String,
    );

Map<String, dynamic> _$$_RestaurantModelToJson(_$_RestaurantModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'enabled': instance.enabled,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'resource_url': instance.resourceUrl,
    };
