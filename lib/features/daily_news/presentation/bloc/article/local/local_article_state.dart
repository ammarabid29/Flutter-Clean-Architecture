import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture/features/daily_news/domain/entities/article.dart';

abstract class LocalArticleState extends Equatable {
  final List<ArticleEntity>? article;

  const LocalArticleState({this.article});

  @override
  List<Object> get props => [article!];
}

class LocalArticlesLoading extends LocalArticleState {
  const LocalArticlesLoading();
}

class LocalArticlesDone extends LocalArticleState {
  const LocalArticlesDone(List<ArticleEntity> articles)
      : super(article: articles);
}
