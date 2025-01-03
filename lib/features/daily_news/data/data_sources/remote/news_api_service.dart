import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/core/constants/constants.dart';
import 'package:flutter_clean_architecture/features/daily_news/data/models/article.dart';
import 'package:retrofit/retrofit.dart';

// run this command
// flutter pub run build_runner build

part 'news_api_service.g.dart';

@RestApi(baseUrl: newsAPIBaseURL)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;

  @GET("/top-headlines")
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles({
    @Query("country") String? country,
    @Query("category") String? category,
    @Query("apikey") String? apiKey,
  });
}
