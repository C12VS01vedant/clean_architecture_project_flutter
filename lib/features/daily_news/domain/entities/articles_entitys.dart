class ArticlesEntitys {
  final int? id;
  final String? title;
  final String? url;
  final String? imageUrl;
  final String? newsSite;
  final String? summary;
  final String? publishedAt;
  final String? updatedAt;
  final String? content;

  ArticlesEntitys(
      {this.id,
      this.title,
      this.url,
      this.imageUrl,
      this.newsSite,
      this.summary,
      this.publishedAt,
      this.updatedAt,
      this.content});

  factory ArticlesEntitys.fromJson(Map<String, dynamic> json) {
    return ArticlesEntitys(
      id: json['id'],
      title: json['title'],
      url: json['url'],
      imageUrl: json['imageUrl'],
      newsSite: json['newsSite'],
      summary: json['summary'],
      publishedAt: json['publishedAt'],
      updatedAt: json['updatedAt'],
      content: json['content'],
    );
  }
}
