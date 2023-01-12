import 'package:freezed_annotation/freezed_annotation.dart';
part 'book_model.freezed.dart';
part 'book_model.g.dart';

var json = {
  "metadata": {
    "@type": "http://schema.org/Book",
    "title": "Alice's Adventures in Wonderland",
    "language": "en",
    "modified": "2023-01-11T07:20:45Z",
    "published": "1897-01-01T00:00:00Z",
    "identifier": "https://www.feedbooks.com/book/22",
    "author": [
      {
        "name": "Lewis Carroll",
        "links": [
          {
            "type": "application/opds+json",
            "href": "https://catalog.feedbooks.com/publicdomain/browse/recent.json?author_id=13&lang=en"
          }
        ]
      }
    ],
    "publisher": {
      "name": "Feedbooks",
      "links": [
        {
          "type": "application/opds+json",
          "href": "https://catalog.feedbooks.com/publicdomain/browse/recent.json?lang=en&publisher=Feedbooks"
        }
      ]
    },
    "description":
        "Alice's Adventures in Wonderland (1865) is a novel written by English author Charles Lutwidge Dodgson, better known under the pseudonym Lewis Carroll. It tells the story of a girl named Alice who falls down a rabbit-hole into a fantasy world populated by peculiar and anthropomorphic creatures.\r\nThe tale is filled with allusions to Dodgson's friends (and enemies), and to the lessons that British schoolchildren were expected to memorize. The tale plays with logic in ways that have made the story of lasting popularity with adults as well as children. It is considered to be one of the most characteristic examples of the genre of literary nonsense, and its narrative course and structure has been enormously influential, mainly in the fantasy genre.",
    "subject": [
      {
        "code": "FBFIC000000",
        "name": "Fiction",
        "scheme": "http://www.feedbooks.com/categories",
        "links": [
          {
            "type": "application/opds+json",
            "href": "https://catalog.feedbooks.com/publicdomain/browse/top.json?cat=FBFIC000000&lang=en"
          }
        ]
      },
      {
        "code": "FBFIC009000",
        "name": "Fantasy",
        "scheme": "http://www.feedbooks.com/categories",
        "links": [
          {
            "type": "application/opds+json",
            "href": "https://catalog.feedbooks.com/publicdomain/browse/top.json?cat=FBFIC009000&lang=en"
          }
        ]
      }
    ]
  },
  "images": [
    {
      "href": "https://covers.feedbooks.net/book/22.jpg?size=large&t=1673421645",
      "type": "image/jpeg",
      "width": 260,
      "height": 420
    },
    {
      "href": "https://covers.feedbooks.net/book/22.jpg?t=1673421645",
      "type": "image/jpeg",
      "width": 100,
      "height": 180,
    }
  ],
  "links": [
    {
      "rel": "http://opds-spec.org/acquisition",
      "href": "https://catalog.feedbooks.com/book/22.epub",
      "type": "application/epub+zip"
    },
    {
      "rel": "self",
      "href": "https://catalog.feedbooks.com/book/22.json",
      "type": "application/opds-publication+json",
      "properties": {
        "authenticate": {
          "href": "https://catalog.feedbooks.com/user/authentication",
          "type": "application/opds-authentication+json"
        }
      }
    }
  ]
};

@freezed
class ResponseModel with _$ResponseModel {
  @JsonSerializable(explicitToJson: true)
  const factory ResponseModel({
    required List<BookModel> publications,
  }) = _ResponseModel;
  factory ResponseModel.fromJson(Map<String, dynamic> json) => _$ResponseModelFromJson(json);
}

@freezed
class BookModel with _$BookModel {
  @JsonSerializable(explicitToJson: true)
  const factory BookModel({
    required MetaDataModel metadata,
    required List<ImageModel> images,
    required List<LinkModel> links,
  }) = _BookModel;
  factory BookModel.fromJson(Map<String, dynamic> json) => _$BookModelFromJson(json);
}

@freezed
class MetaDataModel with _$MetaDataModel {
  @JsonSerializable(explicitToJson: true)
  const factory MetaDataModel({
    required String title,
    required String language,
    required String modified,
    required String published,
    required String identifier,
    required String description,
    required PublisherModel publisher,
    required List<AuthorModel> author,
    required List<SubjectModel> subject,
  }) = _MetaDataModel;
  factory MetaDataModel.fromJson(Map<String, dynamic> json) => _$MetaDataModelFromJson(json);
}

@freezed
class AuthorModel with _$AuthorModel {
  @JsonSerializable(explicitToJson: true)
  const factory AuthorModel({
    required String name,
    List<LinkModel>? links,
  }) = _AuthorModel;
  factory AuthorModel.fromJson(Map<String, dynamic> json) => _$AuthorModelFromJson(json);
}

@freezed
class ImageModel with _$ImageModel {
  const factory ImageModel({
    required String href,
    required String type,
    required int width,
    required int height,
  }) = _ImageModel;
  factory ImageModel.fromJson(Map<String, dynamic> json) => _$ImageModelFromJson(json);
}

@freezed
class PublisherModel with _$PublisherModel {
  @JsonSerializable(explicitToJson: true)
  const factory PublisherModel({
    required String name,
    List<LinkModel>? links,
  }) = _PublisherModel;
  factory PublisherModel.fromJson(Map<String, dynamic> json) => _$PublisherModelFromJson(json);
}

@freezed
class LinkModel with _$LinkModel {
  const factory LinkModel({
    String? rel,
    String? href,
    String? type,
  }) = _LinkModel;
  factory LinkModel.fromJson(Map<String, dynamic> json) => _$LinkModelFromJson(json);
}

@freezed
class SubjectModel with _$SubjectModel {
  @JsonSerializable(explicitToJson: true)
  const factory SubjectModel({
    required String code,
    required String name,
    required String scheme,
    @Default([]) List<LinkModel>? links,
  }) = _SubjectModel;
  factory SubjectModel.fromJson(Map<String, dynamic> json) => _$SubjectModelFromJson(json);
}
