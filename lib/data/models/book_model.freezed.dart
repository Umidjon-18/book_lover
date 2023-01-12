// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseModel _$ResponseModelFromJson(Map<String, dynamic> json) {
  return _ResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseModel {
  List<BookModel> get publications => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseModelCopyWith<ResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseModelCopyWith<$Res> {
  factory $ResponseModelCopyWith(
          ResponseModel value, $Res Function(ResponseModel) then) =
      _$ResponseModelCopyWithImpl<$Res, ResponseModel>;
  @useResult
  $Res call({List<BookModel> publications});
}

/// @nodoc
class _$ResponseModelCopyWithImpl<$Res, $Val extends ResponseModel>
    implements $ResponseModelCopyWith<$Res> {
  _$ResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publications = null,
  }) {
    return _then(_value.copyWith(
      publications: null == publications
          ? _value.publications
          : publications // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseModelCopyWith<$Res>
    implements $ResponseModelCopyWith<$Res> {
  factory _$$_ResponseModelCopyWith(
          _$_ResponseModel value, $Res Function(_$_ResponseModel) then) =
      __$$_ResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BookModel> publications});
}

/// @nodoc
class __$$_ResponseModelCopyWithImpl<$Res>
    extends _$ResponseModelCopyWithImpl<$Res, _$_ResponseModel>
    implements _$$_ResponseModelCopyWith<$Res> {
  __$$_ResponseModelCopyWithImpl(
      _$_ResponseModel _value, $Res Function(_$_ResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publications = null,
  }) {
    return _then(_$_ResponseModel(
      publications: null == publications
          ? _value._publications
          : publications // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ResponseModel implements _ResponseModel {
  const _$_ResponseModel({required final List<BookModel> publications})
      : _publications = publications;

  factory _$_ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseModelFromJson(json);

  final List<BookModel> _publications;
  @override
  List<BookModel> get publications {
    if (_publications is EqualUnmodifiableListView) return _publications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_publications);
  }

  @override
  String toString() {
    return 'ResponseModel(publications: $publications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseModel &&
            const DeepCollectionEquality()
                .equals(other._publications, _publications));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_publications));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseModelCopyWith<_$_ResponseModel> get copyWith =>
      __$$_ResponseModelCopyWithImpl<_$_ResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseModelToJson(
      this,
    );
  }
}

abstract class _ResponseModel implements ResponseModel {
  const factory _ResponseModel({required final List<BookModel> publications}) =
      _$_ResponseModel;

  factory _ResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ResponseModel.fromJson;

  @override
  List<BookModel> get publications;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseModelCopyWith<_$_ResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

BookModel _$BookModelFromJson(Map<String, dynamic> json) {
  return _BookModel.fromJson(json);
}

/// @nodoc
mixin _$BookModel {
  MetaDataModel get metadata => throw _privateConstructorUsedError;
  List<ImageModel> get images => throw _privateConstructorUsedError;
  List<LinkModel> get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookModelCopyWith<BookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookModelCopyWith<$Res> {
  factory $BookModelCopyWith(BookModel value, $Res Function(BookModel) then) =
      _$BookModelCopyWithImpl<$Res, BookModel>;
  @useResult
  $Res call(
      {MetaDataModel metadata, List<ImageModel> images, List<LinkModel> links});

  $MetaDataModelCopyWith<$Res> get metadata;
}

/// @nodoc
class _$BookModelCopyWithImpl<$Res, $Val extends BookModel>
    implements $BookModelCopyWith<$Res> {
  _$BookModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
    Object? images = null,
    Object? links = null,
  }) {
    return _then(_value.copyWith(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MetaDataModel,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<LinkModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDataModelCopyWith<$Res> get metadata {
    return $MetaDataModelCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BookModelCopyWith<$Res> implements $BookModelCopyWith<$Res> {
  factory _$$_BookModelCopyWith(
          _$_BookModel value, $Res Function(_$_BookModel) then) =
      __$$_BookModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MetaDataModel metadata, List<ImageModel> images, List<LinkModel> links});

  @override
  $MetaDataModelCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$_BookModelCopyWithImpl<$Res>
    extends _$BookModelCopyWithImpl<$Res, _$_BookModel>
    implements _$$_BookModelCopyWith<$Res> {
  __$$_BookModelCopyWithImpl(
      _$_BookModel _value, $Res Function(_$_BookModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
    Object? images = null,
    Object? links = null,
  }) {
    return _then(_$_BookModel(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MetaDataModel,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<LinkModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BookModel implements _BookModel {
  const _$_BookModel(
      {required this.metadata,
      required final List<ImageModel> images,
      required final List<LinkModel> links})
      : _images = images,
        _links = links;

  factory _$_BookModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookModelFromJson(json);

  @override
  final MetaDataModel metadata;
  final List<ImageModel> _images;
  @override
  List<ImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<LinkModel> _links;
  @override
  List<LinkModel> get links {
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_links);
  }

  @override
  String toString() {
    return 'BookModel(metadata: $metadata, images: $images, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookModel &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._links, _links));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      metadata,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_links));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookModelCopyWith<_$_BookModel> get copyWith =>
      __$$_BookModelCopyWithImpl<_$_BookModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookModelToJson(
      this,
    );
  }
}

abstract class _BookModel implements BookModel {
  const factory _BookModel(
      {required final MetaDataModel metadata,
      required final List<ImageModel> images,
      required final List<LinkModel> links}) = _$_BookModel;

  factory _BookModel.fromJson(Map<String, dynamic> json) =
      _$_BookModel.fromJson;

  @override
  MetaDataModel get metadata;
  @override
  List<ImageModel> get images;
  @override
  List<LinkModel> get links;
  @override
  @JsonKey(ignore: true)
  _$$_BookModelCopyWith<_$_BookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaDataModel _$MetaDataModelFromJson(Map<String, dynamic> json) {
  return _MetaDataModel.fromJson(json);
}

/// @nodoc
mixin _$MetaDataModel {
  String get title => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get modified => throw _privateConstructorUsedError;
  String get published => throw _privateConstructorUsedError;
  String get identifier => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  PublisherModel get publisher => throw _privateConstructorUsedError;
  List<AuthorModel> get author => throw _privateConstructorUsedError;
  List<SubjectModel> get subject => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaDataModelCopyWith<MetaDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDataModelCopyWith<$Res> {
  factory $MetaDataModelCopyWith(
          MetaDataModel value, $Res Function(MetaDataModel) then) =
      _$MetaDataModelCopyWithImpl<$Res, MetaDataModel>;
  @useResult
  $Res call(
      {String title,
      String language,
      String modified,
      String published,
      String identifier,
      String description,
      PublisherModel publisher,
      List<AuthorModel> author,
      List<SubjectModel> subject});

  $PublisherModelCopyWith<$Res> get publisher;
}

/// @nodoc
class _$MetaDataModelCopyWithImpl<$Res, $Val extends MetaDataModel>
    implements $MetaDataModelCopyWith<$Res> {
  _$MetaDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? language = null,
    Object? modified = null,
    Object? published = null,
    Object? identifier = null,
    Object? description = null,
    Object? publisher = null,
    Object? author = null,
    Object? subject = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      modified: null == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String,
      published: null == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as PublisherModel,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as List<AuthorModel>,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as List<SubjectModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PublisherModelCopyWith<$Res> get publisher {
    return $PublisherModelCopyWith<$Res>(_value.publisher, (value) {
      return _then(_value.copyWith(publisher: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MetaDataModelCopyWith<$Res>
    implements $MetaDataModelCopyWith<$Res> {
  factory _$$_MetaDataModelCopyWith(
          _$_MetaDataModel value, $Res Function(_$_MetaDataModel) then) =
      __$$_MetaDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String language,
      String modified,
      String published,
      String identifier,
      String description,
      PublisherModel publisher,
      List<AuthorModel> author,
      List<SubjectModel> subject});

  @override
  $PublisherModelCopyWith<$Res> get publisher;
}

/// @nodoc
class __$$_MetaDataModelCopyWithImpl<$Res>
    extends _$MetaDataModelCopyWithImpl<$Res, _$_MetaDataModel>
    implements _$$_MetaDataModelCopyWith<$Res> {
  __$$_MetaDataModelCopyWithImpl(
      _$_MetaDataModel _value, $Res Function(_$_MetaDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? language = null,
    Object? modified = null,
    Object? published = null,
    Object? identifier = null,
    Object? description = null,
    Object? publisher = null,
    Object? author = null,
    Object? subject = null,
  }) {
    return _then(_$_MetaDataModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      modified: null == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String,
      published: null == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as PublisherModel,
      author: null == author
          ? _value._author
          : author // ignore: cast_nullable_to_non_nullable
              as List<AuthorModel>,
      subject: null == subject
          ? _value._subject
          : subject // ignore: cast_nullable_to_non_nullable
              as List<SubjectModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_MetaDataModel implements _MetaDataModel {
  const _$_MetaDataModel(
      {required this.title,
      required this.language,
      required this.modified,
      required this.published,
      required this.identifier,
      required this.description,
      required this.publisher,
      required final List<AuthorModel> author,
      required final List<SubjectModel> subject})
      : _author = author,
        _subject = subject;

  factory _$_MetaDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_MetaDataModelFromJson(json);

  @override
  final String title;
  @override
  final String language;
  @override
  final String modified;
  @override
  final String published;
  @override
  final String identifier;
  @override
  final String description;
  @override
  final PublisherModel publisher;
  final List<AuthorModel> _author;
  @override
  List<AuthorModel> get author {
    if (_author is EqualUnmodifiableListView) return _author;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_author);
  }

  final List<SubjectModel> _subject;
  @override
  List<SubjectModel> get subject {
    if (_subject is EqualUnmodifiableListView) return _subject;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subject);
  }

  @override
  String toString() {
    return 'MetaDataModel(title: $title, language: $language, modified: $modified, published: $published, identifier: $identifier, description: $description, publisher: $publisher, author: $author, subject: $subject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaDataModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.modified, modified) ||
                other.modified == modified) &&
            (identical(other.published, published) ||
                other.published == published) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            const DeepCollectionEquality().equals(other._author, _author) &&
            const DeepCollectionEquality().equals(other._subject, _subject));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      language,
      modified,
      published,
      identifier,
      description,
      publisher,
      const DeepCollectionEquality().hash(_author),
      const DeepCollectionEquality().hash(_subject));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaDataModelCopyWith<_$_MetaDataModel> get copyWith =>
      __$$_MetaDataModelCopyWithImpl<_$_MetaDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaDataModelToJson(
      this,
    );
  }
}

abstract class _MetaDataModel implements MetaDataModel {
  const factory _MetaDataModel(
      {required final String title,
      required final String language,
      required final String modified,
      required final String published,
      required final String identifier,
      required final String description,
      required final PublisherModel publisher,
      required final List<AuthorModel> author,
      required final List<SubjectModel> subject}) = _$_MetaDataModel;

  factory _MetaDataModel.fromJson(Map<String, dynamic> json) =
      _$_MetaDataModel.fromJson;

  @override
  String get title;
  @override
  String get language;
  @override
  String get modified;
  @override
  String get published;
  @override
  String get identifier;
  @override
  String get description;
  @override
  PublisherModel get publisher;
  @override
  List<AuthorModel> get author;
  @override
  List<SubjectModel> get subject;
  @override
  @JsonKey(ignore: true)
  _$$_MetaDataModelCopyWith<_$_MetaDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthorModel _$AuthorModelFromJson(Map<String, dynamic> json) {
  return _AuthorModel.fromJson(json);
}

/// @nodoc
mixin _$AuthorModel {
  String get name => throw _privateConstructorUsedError;
  List<LinkModel>? get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorModelCopyWith<AuthorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorModelCopyWith<$Res> {
  factory $AuthorModelCopyWith(
          AuthorModel value, $Res Function(AuthorModel) then) =
      _$AuthorModelCopyWithImpl<$Res, AuthorModel>;
  @useResult
  $Res call({String name, List<LinkModel>? links});
}

/// @nodoc
class _$AuthorModelCopyWithImpl<$Res, $Val extends AuthorModel>
    implements $AuthorModelCopyWith<$Res> {
  _$AuthorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? links = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<LinkModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthorModelCopyWith<$Res>
    implements $AuthorModelCopyWith<$Res> {
  factory _$$_AuthorModelCopyWith(
          _$_AuthorModel value, $Res Function(_$_AuthorModel) then) =
      __$$_AuthorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<LinkModel>? links});
}

/// @nodoc
class __$$_AuthorModelCopyWithImpl<$Res>
    extends _$AuthorModelCopyWithImpl<$Res, _$_AuthorModel>
    implements _$$_AuthorModelCopyWith<$Res> {
  __$$_AuthorModelCopyWithImpl(
      _$_AuthorModel _value, $Res Function(_$_AuthorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? links = freezed,
  }) {
    return _then(_$_AuthorModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      links: freezed == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<LinkModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AuthorModel implements _AuthorModel {
  const _$_AuthorModel({required this.name, final List<LinkModel>? links})
      : _links = links;

  factory _$_AuthorModel.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorModelFromJson(json);

  @override
  final String name;
  final List<LinkModel>? _links;
  @override
  List<LinkModel>? get links {
    final value = _links;
    if (value == null) return null;
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AuthorModel(name: $name, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorModel &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._links, _links));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_links));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorModelCopyWith<_$_AuthorModel> get copyWith =>
      __$$_AuthorModelCopyWithImpl<_$_AuthorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorModelToJson(
      this,
    );
  }
}

abstract class _AuthorModel implements AuthorModel {
  const factory _AuthorModel(
      {required final String name,
      final List<LinkModel>? links}) = _$_AuthorModel;

  factory _AuthorModel.fromJson(Map<String, dynamic> json) =
      _$_AuthorModel.fromJson;

  @override
  String get name;
  @override
  List<LinkModel>? get links;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorModelCopyWith<_$_AuthorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) {
  return _ImageModel.fromJson(json);
}

/// @nodoc
mixin _$ImageModel {
  String get href => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageModelCopyWith<ImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageModelCopyWith<$Res> {
  factory $ImageModelCopyWith(
          ImageModel value, $Res Function(ImageModel) then) =
      _$ImageModelCopyWithImpl<$Res, ImageModel>;
  @useResult
  $Res call({String href, String type, int width, int height});
}

/// @nodoc
class _$ImageModelCopyWithImpl<$Res, $Val extends ImageModel>
    implements $ImageModelCopyWith<$Res> {
  _$ImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? type = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageModelCopyWith<$Res>
    implements $ImageModelCopyWith<$Res> {
  factory _$$_ImageModelCopyWith(
          _$_ImageModel value, $Res Function(_$_ImageModel) then) =
      __$$_ImageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String href, String type, int width, int height});
}

/// @nodoc
class __$$_ImageModelCopyWithImpl<$Res>
    extends _$ImageModelCopyWithImpl<$Res, _$_ImageModel>
    implements _$$_ImageModelCopyWith<$Res> {
  __$$_ImageModelCopyWithImpl(
      _$_ImageModel _value, $Res Function(_$_ImageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? type = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_$_ImageModel(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageModel implements _ImageModel {
  const _$_ImageModel(
      {required this.href,
      required this.type,
      required this.width,
      required this.height});

  factory _$_ImageModel.fromJson(Map<String, dynamic> json) =>
      _$$_ImageModelFromJson(json);

  @override
  final String href;
  @override
  final String type;
  @override
  final int width;
  @override
  final int height;

  @override
  String toString() {
    return 'ImageModel(href: $href, type: $type, width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageModel &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, href, type, width, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageModelCopyWith<_$_ImageModel> get copyWith =>
      __$$_ImageModelCopyWithImpl<_$_ImageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageModelToJson(
      this,
    );
  }
}

abstract class _ImageModel implements ImageModel {
  const factory _ImageModel(
      {required final String href,
      required final String type,
      required final int width,
      required final int height}) = _$_ImageModel;

  factory _ImageModel.fromJson(Map<String, dynamic> json) =
      _$_ImageModel.fromJson;

  @override
  String get href;
  @override
  String get type;
  @override
  int get width;
  @override
  int get height;
  @override
  @JsonKey(ignore: true)
  _$$_ImageModelCopyWith<_$_ImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PublisherModel _$PublisherModelFromJson(Map<String, dynamic> json) {
  return _PublisherModel.fromJson(json);
}

/// @nodoc
mixin _$PublisherModel {
  String get name => throw _privateConstructorUsedError;
  List<LinkModel>? get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublisherModelCopyWith<PublisherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublisherModelCopyWith<$Res> {
  factory $PublisherModelCopyWith(
          PublisherModel value, $Res Function(PublisherModel) then) =
      _$PublisherModelCopyWithImpl<$Res, PublisherModel>;
  @useResult
  $Res call({String name, List<LinkModel>? links});
}

/// @nodoc
class _$PublisherModelCopyWithImpl<$Res, $Val extends PublisherModel>
    implements $PublisherModelCopyWith<$Res> {
  _$PublisherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? links = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<LinkModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PublisherModelCopyWith<$Res>
    implements $PublisherModelCopyWith<$Res> {
  factory _$$_PublisherModelCopyWith(
          _$_PublisherModel value, $Res Function(_$_PublisherModel) then) =
      __$$_PublisherModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<LinkModel>? links});
}

/// @nodoc
class __$$_PublisherModelCopyWithImpl<$Res>
    extends _$PublisherModelCopyWithImpl<$Res, _$_PublisherModel>
    implements _$$_PublisherModelCopyWith<$Res> {
  __$$_PublisherModelCopyWithImpl(
      _$_PublisherModel _value, $Res Function(_$_PublisherModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? links = freezed,
  }) {
    return _then(_$_PublisherModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      links: freezed == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<LinkModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PublisherModel implements _PublisherModel {
  const _$_PublisherModel({required this.name, final List<LinkModel>? links})
      : _links = links;

  factory _$_PublisherModel.fromJson(Map<String, dynamic> json) =>
      _$$_PublisherModelFromJson(json);

  @override
  final String name;
  final List<LinkModel>? _links;
  @override
  List<LinkModel>? get links {
    final value = _links;
    if (value == null) return null;
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PublisherModel(name: $name, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PublisherModel &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._links, _links));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_links));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PublisherModelCopyWith<_$_PublisherModel> get copyWith =>
      __$$_PublisherModelCopyWithImpl<_$_PublisherModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PublisherModelToJson(
      this,
    );
  }
}

abstract class _PublisherModel implements PublisherModel {
  const factory _PublisherModel(
      {required final String name,
      final List<LinkModel>? links}) = _$_PublisherModel;

  factory _PublisherModel.fromJson(Map<String, dynamic> json) =
      _$_PublisherModel.fromJson;

  @override
  String get name;
  @override
  List<LinkModel>? get links;
  @override
  @JsonKey(ignore: true)
  _$$_PublisherModelCopyWith<_$_PublisherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

LinkModel _$LinkModelFromJson(Map<String, dynamic> json) {
  return _LinkModel.fromJson(json);
}

/// @nodoc
mixin _$LinkModel {
  String? get rel => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkModelCopyWith<LinkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkModelCopyWith<$Res> {
  factory $LinkModelCopyWith(LinkModel value, $Res Function(LinkModel) then) =
      _$LinkModelCopyWithImpl<$Res, LinkModel>;
  @useResult
  $Res call({String? rel, String? href, String? type});
}

/// @nodoc
class _$LinkModelCopyWithImpl<$Res, $Val extends LinkModel>
    implements $LinkModelCopyWith<$Res> {
  _$LinkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rel = freezed,
    Object? href = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      rel: freezed == rel
          ? _value.rel
          : rel // ignore: cast_nullable_to_non_nullable
              as String?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LinkModelCopyWith<$Res> implements $LinkModelCopyWith<$Res> {
  factory _$$_LinkModelCopyWith(
          _$_LinkModel value, $Res Function(_$_LinkModel) then) =
      __$$_LinkModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? rel, String? href, String? type});
}

/// @nodoc
class __$$_LinkModelCopyWithImpl<$Res>
    extends _$LinkModelCopyWithImpl<$Res, _$_LinkModel>
    implements _$$_LinkModelCopyWith<$Res> {
  __$$_LinkModelCopyWithImpl(
      _$_LinkModel _value, $Res Function(_$_LinkModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rel = freezed,
    Object? href = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_LinkModel(
      rel: freezed == rel
          ? _value.rel
          : rel // ignore: cast_nullable_to_non_nullable
              as String?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LinkModel implements _LinkModel {
  const _$_LinkModel({this.rel, this.href, this.type});

  factory _$_LinkModel.fromJson(Map<String, dynamic> json) =>
      _$$_LinkModelFromJson(json);

  @override
  final String? rel;
  @override
  final String? href;
  @override
  final String? type;

  @override
  String toString() {
    return 'LinkModel(rel: $rel, href: $href, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LinkModel &&
            (identical(other.rel, rel) || other.rel == rel) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rel, href, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinkModelCopyWith<_$_LinkModel> get copyWith =>
      __$$_LinkModelCopyWithImpl<_$_LinkModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinkModelToJson(
      this,
    );
  }
}

abstract class _LinkModel implements LinkModel {
  const factory _LinkModel(
      {final String? rel,
      final String? href,
      final String? type}) = _$_LinkModel;

  factory _LinkModel.fromJson(Map<String, dynamic> json) =
      _$_LinkModel.fromJson;

  @override
  String? get rel;
  @override
  String? get href;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$_LinkModelCopyWith<_$_LinkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SubjectModel _$SubjectModelFromJson(Map<String, dynamic> json) {
  return _SubjectModel.fromJson(json);
}

/// @nodoc
mixin _$SubjectModel {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get scheme => throw _privateConstructorUsedError;
  List<LinkModel>? get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectModelCopyWith<SubjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectModelCopyWith<$Res> {
  factory $SubjectModelCopyWith(
          SubjectModel value, $Res Function(SubjectModel) then) =
      _$SubjectModelCopyWithImpl<$Res, SubjectModel>;
  @useResult
  $Res call({String code, String name, String scheme, List<LinkModel>? links});
}

/// @nodoc
class _$SubjectModelCopyWithImpl<$Res, $Val extends SubjectModel>
    implements $SubjectModelCopyWith<$Res> {
  _$SubjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? scheme = null,
    Object? links = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      scheme: null == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as String,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<LinkModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubjectModelCopyWith<$Res>
    implements $SubjectModelCopyWith<$Res> {
  factory _$$_SubjectModelCopyWith(
          _$_SubjectModel value, $Res Function(_$_SubjectModel) then) =
      __$$_SubjectModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name, String scheme, List<LinkModel>? links});
}

/// @nodoc
class __$$_SubjectModelCopyWithImpl<$Res>
    extends _$SubjectModelCopyWithImpl<$Res, _$_SubjectModel>
    implements _$$_SubjectModelCopyWith<$Res> {
  __$$_SubjectModelCopyWithImpl(
      _$_SubjectModel _value, $Res Function(_$_SubjectModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? scheme = null,
    Object? links = freezed,
  }) {
    return _then(_$_SubjectModel(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      scheme: null == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as String,
      links: freezed == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<LinkModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SubjectModel implements _SubjectModel {
  const _$_SubjectModel(
      {required this.code,
      required this.name,
      required this.scheme,
      final List<LinkModel>? links = const []})
      : _links = links;

  factory _$_SubjectModel.fromJson(Map<String, dynamic> json) =>
      _$$_SubjectModelFromJson(json);

  @override
  final String code;
  @override
  final String name;
  @override
  final String scheme;
  final List<LinkModel>? _links;
  @override
  @JsonKey()
  List<LinkModel>? get links {
    final value = _links;
    if (value == null) return null;
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SubjectModel(code: $code, name: $name, scheme: $scheme, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubjectModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.scheme, scheme) || other.scheme == scheme) &&
            const DeepCollectionEquality().equals(other._links, _links));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, name, scheme,
      const DeepCollectionEquality().hash(_links));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubjectModelCopyWith<_$_SubjectModel> get copyWith =>
      __$$_SubjectModelCopyWithImpl<_$_SubjectModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubjectModelToJson(
      this,
    );
  }
}

abstract class _SubjectModel implements SubjectModel {
  const factory _SubjectModel(
      {required final String code,
      required final String name,
      required final String scheme,
      final List<LinkModel>? links}) = _$_SubjectModel;

  factory _SubjectModel.fromJson(Map<String, dynamic> json) =
      _$_SubjectModel.fromJson;

  @override
  String get code;
  @override
  String get name;
  @override
  String get scheme;
  @override
  List<LinkModel>? get links;
  @override
  @JsonKey(ignore: true)
  _$$_SubjectModelCopyWith<_$_SubjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}
