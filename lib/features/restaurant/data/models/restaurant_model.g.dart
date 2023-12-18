// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestaurantModelImpl _$$RestaurantModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RestaurantModelImpl(
      id: json['id'] as int?,
      title: json['title'] as String?,
      location: json['location'] as String?,
      subTitle: json['sub_title'] as String?,
      description: json['description'] as String?,
      enabled: json['enabled'] as String?,
      phoneNumber: json['phone_number'] as String?,
      alternatePhoneNumber: json['alternate_phone_number'] as String?,
      link: json['link'] as String?,
      email: json['email'] as String?,
      instagram: json['instagram'] as String?,
      facebook: json['facebook'] as String?,
      youtube: json['youtube'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
      mondayOpenTime: json['monday_open_time'] as String?,
      mondayCloseTime: json['monday_close_time'] as String?,
      tuesdayOpenTime: json['tuesday_open_time'] as String?,
      tuesdayCloseTime: json['tuesday_close_time'] as String?,
      wednesdayOpenTime: json['wednesday_open_time'] as String?,
      wednesdayCloseTime: json['wednesday_close_time'] as String?,
      thursdayOpenTime: json['thursday_open_time'] as String?,
      thursdayCloseTime: json['thursday_close_time'] as String?,
      fridayOpenTime: json['friday_open_time'] as String?,
      fridayCloseTime: json['friday_close_time'] as String?,
      saturdayOpenTime: json['saturday_open_time'] as String?,
      saturdayCloseTime: json['saturday_close_time'] as String?,
      sundayOpenTime: json['sunday_open_time'] as String?,
      sundayCloseTime: json['sunday_close_time'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      resourceUrl: json['resource_url'] as String?,
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RestaurantModelImplToJson(
        _$RestaurantModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'location': instance.location,
      'sub_title': instance.subTitle,
      'description': instance.description,
      'enabled': instance.enabled,
      'phone_number': instance.phoneNumber,
      'alternate_phone_number': instance.alternatePhoneNumber,
      'link': instance.link,
      'email': instance.email,
      'instagram': instance.instagram,
      'facebook': instance.facebook,
      'youtube': instance.youtube,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'distance': instance.distance,
      'monday_open_time': instance.mondayOpenTime,
      'monday_close_time': instance.mondayCloseTime,
      'tuesday_open_time': instance.tuesdayOpenTime,
      'tuesday_close_time': instance.tuesdayCloseTime,
      'wednesday_open_time': instance.wednesdayOpenTime,
      'wednesday_close_time': instance.wednesdayCloseTime,
      'thursday_open_time': instance.thursdayOpenTime,
      'thursday_close_time': instance.thursdayCloseTime,
      'friday_open_time': instance.fridayOpenTime,
      'friday_close_time': instance.fridayCloseTime,
      'saturday_open_time': instance.saturdayOpenTime,
      'saturday_close_time': instance.saturdayCloseTime,
      'sunday_open_time': instance.sundayOpenTime,
      'sunday_close_time': instance.sundayCloseTime,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'resource_url': instance.resourceUrl,
      'media': instance.media,
    };

_$MediaImpl _$$MediaImplFromJson(Map<String, dynamic> json) => _$MediaImpl(
      id: json['id'] as int?,
      modelType: json['model_type'] as String?,
      modelId: json['model_id'] as String?,
      collectionName: json['collection_name'] as String?,
      name: json['name'] as String?,
      fileName: json['file_name'] as String?,
      mimeType: json['mime_type'] as String?,
      disk: json['disk'] as String?,
      size: json['size'] as String?,
      customProperties: json['custom_properties'] == null
          ? null
          : MediaCustomProperties.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MediaImplToJson(_$MediaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'model_type': instance.modelType,
      'model_id': instance.modelId,
      'collection_name': instance.collectionName,
      'name': instance.name,
      'file_name': instance.fileName,
      'mime_type': instance.mimeType,
      'disk': instance.disk,
      'size': instance.size,
      'custom_properties': instance.customProperties,
    };

_$MediaCustomPropertiesImpl _$$MediaCustomPropertiesImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaCustomPropertiesImpl(
      name: json['name'] as String?,
      fileName: json['file_name'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      generatedConversions:
          (json['generated_conversions'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ),
    );

Map<String, dynamic> _$$MediaCustomPropertiesImplToJson(
        _$MediaCustomPropertiesImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'file_name': instance.fileName,
      'width': instance.width,
      'height': instance.height,
      'generated_conversions': instance.generatedConversions,
    };
