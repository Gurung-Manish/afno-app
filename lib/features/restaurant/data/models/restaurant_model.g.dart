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
      facebook: json['facebook'] as String?,
      website: json['website'] as String?,
      instagram: json['instagram'] as String?,
      contact: json['contact'] as String?,
      enabled: json['enabled'] as int?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      resourceUrl: json['resource_url'] as String,
    );

Map<String, dynamic> _$$_RestaurantModelToJson(_$_RestaurantModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'facebook': instance.facebook,
      'website': instance.website,
      'instagram': instance.instagram,
      'contact': instance.contact,
      'enabled': instance.enabled,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'media': instance.media,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'resource_url': instance.resourceUrl,
    };

_$_Media _$$_MediaFromJson(Map<String, dynamic> json) => _$_Media(
      id: json['id'] as int,
      modelType: json['model_type'] as String,
      modelId: json['model_id'] as int,
      uuid: json['uuid'] as String,
      collectionName: json['collection_name'] as String?,
      name: json['name'] as String?,
      fileName: json['file_name'] as String?,
      mimeType: json['mime_type'] as String?,
      disk: json['disk'] as String?,
      conversionsDisk: json['conversions_disk'] as String?,
      size: json['size'] as int?,
      customProperties: json['customProperties'] as Map<String, dynamic>?,
      generatedConversions:
          json['generatedConversions'] as Map<String, dynamic>?,
      responsiveImages: json['responsiveImages'] as List<dynamic>?,
      orderColumn: json['order_column'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      originalUrl: json['original_url'] as String?,
      previewUrl: json['preview_url'] as String?,
    );

Map<String, dynamic> _$$_MediaToJson(_$_Media instance) => <String, dynamic>{
      'id': instance.id,
      'model_type': instance.modelType,
      'model_id': instance.modelId,
      'uuid': instance.uuid,
      'collection_name': instance.collectionName,
      'name': instance.name,
      'file_name': instance.fileName,
      'mime_type': instance.mimeType,
      'disk': instance.disk,
      'conversions_disk': instance.conversionsDisk,
      'size': instance.size,
      'customProperties': instance.customProperties,
      'generatedConversions': instance.generatedConversions,
      'responsiveImages': instance.responsiveImages,
      'order_column': instance.orderColumn,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'original_url': instance.originalUrl,
      'preview_url': instance.previewUrl,
    };
