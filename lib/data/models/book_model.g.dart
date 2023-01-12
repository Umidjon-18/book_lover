// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseModel _$$_ResponseModelFromJson(Map<String, dynamic> json) =>
    _$_ResponseModel(
      publications: (json['publications'] as List<dynamic>)
          .map((e) => BookModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResponseModelToJson(_$_ResponseModel instance) =>
    <String, dynamic>{
      'publications': instance.publications.map((e) => e.toJson()).toList(),
    };

_$_BookModel _$$_BookModelFromJson(Map<String, dynamic> json) => _$_BookModel(
      metadata:
          MetaDataModel.fromJson(json['metadata'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: (json['links'] as List<dynamic>)
          .map((e) => LinkModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BookModelToJson(_$_BookModel instance) =>
    <String, dynamic>{
      'metadata': instance.metadata.toJson(),
      'images': instance.images.map((e) => e.toJson()).toList(),
      'links': instance.links.map((e) => e.toJson()).toList(),
    };

_$_MetaDataModel _$$_MetaDataModelFromJson(Map<String, dynamic> json) =>
    _$_MetaDataModel(
      title: json['title'] as String,
      language: json['language'] as String,
      modified: json['modified'] as String,
      published: json['published'] as String,
      identifier: json['identifier'] as String,
      description: json['description'] as String,
      publisher:
          PublisherModel.fromJson(json['publisher'] as Map<String, dynamic>),
      author: (json['author'] as List<dynamic>)
          .map((e) => AuthorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      subject: (json['subject'] as List<dynamic>)
          .map((e) => SubjectModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MetaDataModelToJson(_$_MetaDataModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'language': instance.language,
      'modified': instance.modified,
      'published': instance.published,
      'identifier': instance.identifier,
      'description': instance.description,
      'publisher': instance.publisher.toJson(),
      'author': instance.author.map((e) => e.toJson()).toList(),
      'subject': instance.subject.map((e) => e.toJson()).toList(),
    };

_$_AuthorModel _$$_AuthorModelFromJson(Map<String, dynamic> json) =>
    _$_AuthorModel(
      name: json['name'] as String,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => LinkModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AuthorModelToJson(_$_AuthorModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'links': instance.links?.map((e) => e.toJson()).toList(),
    };

_$_ImageModel _$$_ImageModelFromJson(Map<String, dynamic> json) =>
    _$_ImageModel(
      href: json['href'] as String,
      type: json['type'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
    );

Map<String, dynamic> _$$_ImageModelToJson(_$_ImageModel instance) =>
    <String, dynamic>{
      'href': instance.href,
      'type': instance.type,
      'width': instance.width,
      'height': instance.height,
    };

_$_PublisherModel _$$_PublisherModelFromJson(Map<String, dynamic> json) =>
    _$_PublisherModel(
      name: json['name'] as String,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => LinkModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PublisherModelToJson(_$_PublisherModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'links': instance.links?.map((e) => e.toJson()).toList(),
    };

_$_LinkModel _$$_LinkModelFromJson(Map<String, dynamic> json) => _$_LinkModel(
      rel: json['rel'] as String?,
      href: json['href'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_LinkModelToJson(_$_LinkModel instance) =>
    <String, dynamic>{
      'rel': instance.rel,
      'href': instance.href,
      'type': instance.type,
    };

_$_SubjectModel _$$_SubjectModelFromJson(Map<String, dynamic> json) =>
    _$_SubjectModel(
      code: json['code'] as String,
      name: json['name'] as String,
      scheme: json['scheme'] as String,
      links: (json['links'] as List<dynamic>?)
              ?.map((e) => LinkModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_SubjectModelToJson(_$_SubjectModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'scheme': instance.scheme,
      'links': instance.links?.map((e) => e.toJson()).toList(),
    };
