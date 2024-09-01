import 'package:json_annotation/json_annotation.dart';

part 'articles.g.dart';

@JsonSerializable()
class ArticleEntity {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "author")
  final String? author;

  @JsonKey(name: "title")
  final String? title;

  @JsonKey(name: "description")
  final String? description;

  @JsonKey(name: "url")
  final String? url;

  @JsonKey(name: "urlToImage")
  final String? urlToImage;

  @JsonKey(name: "publishedAt")
  final DateTime? publishedAt;

  @JsonKey(name: "content")
  final String? content;

  ArticleEntity({
    this.id,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  @override
  List<Object?> get props {
    return [
      id,
      author,
      title,
      description,
      url,
      urlToImage,
      publishedAt,
      content
    ];
  }

  factory ArticleEntity.fromJson(Map<String, dynamic> json) =>
      _$ArticleEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleEntityToJson(this);
}
