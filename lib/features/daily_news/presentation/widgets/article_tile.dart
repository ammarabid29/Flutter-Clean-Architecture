import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/features/daily_news/domain/entities/article.dart';

class ArticleWidget extends StatelessWidget {
  final ArticleEntity? article;
  const ArticleWidget({super.key, this.article});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      height: MediaQuery.of(context).size.width / 2.2,
      child: Row(
        
        children: [Text(article!.author!)],
      ),
    );
  }
}
