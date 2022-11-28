import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'youtube_search_event.dart';
part 'youtube_search_state.dart';

class YoutubeSearchBloc extends Bloc<YoutubeSearchEvent, YoutubeSearchState> {
  YoutubeSearchBloc() : super(YoutubeSearchInitial()) {
    on<YoutubeSearchEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
