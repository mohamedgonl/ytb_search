import 'package:equatable/equatable.dart';

class Thumbnail extends Equatable {
  final String url;
  final int width;
  final int height;

  Thumbnail({required this.url, required this.width, required this.height});

  @override
  // TODO: implement props
  List<Object?> get props => [url, width, height];
}

class Thumbnails  {
  final Thumbnail defaultThumbnail;
  final Thumbnail mediumThumbnail;
  final Thumbnail largeThumbnail;

  Thumbnails(
      {required this.defaultThumbnail,
      required this.mediumThumbnail,
      required this.largeThumbnail}) ;
}
