import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:youtube_search/features/youtube_search/domain/entities/search_result_entity.dart';
import 'package:youtube_search/features/youtube_search/domain/entities/thumbnail_entity.dart';
import 'package:youtube_search/features/youtube_search/domain/repositories/search_repositories.dart';
import 'package:youtube_search/features/youtube_search/domain/usecases/get_result_by_search.dart';

class MockSearchRepositories extends Mock implements SearchRepositories {}

void main() {
  late SearchRepositories repositories;
  late GetResultBySearch usecase;

  setUp(() {
    repositories = MockSearchRepositories();
    usecase = GetResultBySearch(repositories);
  });

  final Thumbnail dthumbnail = Thumbnail(
      url: 'https://i.ytimg.com/vi/xIqwZPeHHLA/default.jpg',
      width: 120,
      height: 90);
  final Thumbnail mthumbnail = Thumbnail(
      url: 'https://i.ytimg.com/vi/xIqwZPeHHLA/mqdefault.jpg',
      width: 320,
      height: 180);
  final Thumbnail lthumbnail = Thumbnail(
      url: 'https://i.ytimg.com/vi/xIqwZPeHHLA/hqdefault.jpg',
      width: 480,
      height: 360);

  final Thumbnails thumbnails = Thumbnails(
      defaultThumbnail: dthumbnail,
      mediumThumbnail: mthumbnail,
      largeThumbnail: lthumbnail);
  final result = SearchResultEntity(
      "Justin Bieber - Mistletoe (Official Music Video)",
      "REMASTERED IN HD! UP TO 4K!! 'Under The Mistletoe' now on vinyl: http://smarturl.it/UnderMistletoeLP Stream Mistletoe: ...",
      DateTime.now(),
      thumbnails);

  test('should get result by search from repository', () async {
    when(() => repositories.getResultBySearch('justin'))
        .thenAnswer();
  });
}
