import 'package:c_a_project/core/resources/data_state.dart';
import 'package:c_a_project/features/daily_news/data/models/articles.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}