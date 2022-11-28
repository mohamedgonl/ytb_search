import 'package:equatable/equatable.dart';
import 'package:youtube_search/features/youtube_search/domain/entities/thumbnail_entity.dart';

class SearchResultEntity extends Equatable {
  final String title;
  final String description;
  final DateTime publishedAt;
  final Thumbnails thumbnails;
  SearchResultEntity(this.title, this.description, this.publishedAt, this.thumbnails);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
