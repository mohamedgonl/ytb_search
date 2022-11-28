import 'package:youtube_search/errors/failure.dart';
import 'package:youtube_search/features/youtube_search/domain/entities/search_result_entity.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepositories {
  Future<Either<Failure, SearchResultEntity>> getResultBySearch(String name);
}
