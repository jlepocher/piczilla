// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageDataModelImpl _$$ImageDataModelImplFromJson(Map<String, dynamic> json) =>
    _$ImageDataModelImpl(
      id: (json['id'] as num).toInt(),
      url: json['url'] as String,
      photographer: json['photographer'] as String?,
      photographerUrl: json['photographerUrl'] as String?,
      src: ImageSourceModel.fromJson(json['src'] as Map<String, dynamic>),
      alt: json['alt'] as String?,
    );

Map<String, dynamic> _$$ImageDataModelImplToJson(
        _$ImageDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'photographer': instance.photographer,
      'photographerUrl': instance.photographerUrl,
      'src': instance.src,
      'alt': instance.alt,
    };
