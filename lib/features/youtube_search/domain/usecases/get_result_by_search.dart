import 'package:dartz/dartz.dart';
import 'package:youtube_search/common/usecase.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:youtube_search/errors/failure.dart';
import 'package:youtube_search/features/youtube_search/domain/entities/search_result_entity.dart';
import 'package:youtube_search/features/youtube_search/domain/repositories/search_repositories.dart';

class GetResultBySearch implements UseCase<SearchResultEntity, Params> {
  final SearchRepositories repository;

  GetResultBySearch(this.repository);

  @override
  Future<Either<Failure, SearchResultEntity>> call(Params) async {
    return await repository.getResultBySearch(Params.searchContent);
  }
}

class Params extends Equatable {
  final String searchContent;

  Params({required this.searchContent});

  @override
  List<Object> get props => [searchContent];
}
