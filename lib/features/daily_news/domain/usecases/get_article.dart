import 'package:c_a_project/core/resources/data_state.dart';
import 'package:c_a_project/core/usecases/usecase.dart';
import 'package:c_a_project/features/daily_news/data/models/articles.dart';
import 'package:c_a_project/features/daily_news/domain/repository/article_repository.dart';

class GetArticlesUseCase
    implements UseCase<DataState<List<ArticleEntity>>, void> {
  final ArticleRepository _articleRepository;

  GetArticlesUseCase(this._articleRepository);

  @override
  Future<DataState<List<ArticleEntity>>> call({void params}) {
    return _articleRepository.getNewsArticles();
  }
}
