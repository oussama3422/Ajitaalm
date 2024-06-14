// import 'package:ajitstafd/app_config.dart';
// import 'package:bloc/bloc.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import '../features/models/youtube_video.dart';
// part  'video_state.dart';

// class VideosCubit extends Cubit<VideosState> {
//   VideosCubit() : super(VideosInitial());

//   Future<void> fetchVideos(String query) async {
//     emit(VideosLoading());
//     final url =
//         'https://www.googleapis.com/youtube/v3/search?part=snippet&type=video&q=$query&key=${AppConfig.apiKei}';

//     try {
//       final response = await http.get(Uri.parse(url));
//       if (response.statusCode == 200) {
//         final data = json.decode(response.body);
//         final List<YouTubeVideo> videos = (data['items'] as List)
//             .map((item) => YouTubeVideo.fromJson(item))
//             .toList();
//         emit(VideosLoaded(videos));
//       } else {
//         emit(VideosError('Failed to fetch videos'));
//       }
//     } catch (e) {
//       emit(VideosError(e.toString()));
//     }
//   }
// }


import 'package:ajitstafd/app_config.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../features/models/youtube_video.dart';

part 'video_state.dart';

class VideosCubit extends Cubit<VideosState> {
  VideosCubit() : super(VideosInitial());

  String _nextPageToken = '';
  List<YouTubeVideo> _videos = [];
  bool _isFetching = false;
  List<YouTubeVideo> get videos => _videos;  // Add this getter

  Future<void> fetchVideos(String query, {bool isNextPage = false}) async {
    if (_isFetching) return;

    _isFetching = true;
    if (!isNextPage) {
      emit(VideosLoading());
    }

    final url = 'https://www.googleapis.com/youtube/v3/search?part=snippet&type=video&maxResults=10&q=$query&key=${AppConfig.apiKey}&pageToken=$_nextPageToken';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        _nextPageToken = data['nextPageToken'] ?? '';

        final List<YouTubeVideo> newVideos = (data['items'] as List).map((item) => YouTubeVideo.fromJson(item)).toList();

        if (isNextPage) {
          _videos.addAll(newVideos);
        } else {
          _videos = newVideos;
        }

        emit(VideosLoaded(_videos));
      } else {
        emit(VideosError('Failed to fetch videos'));
      }
    } catch (e) {
      emit(VideosError(e.toString()));
    } finally {
      _isFetching = false;
    }
  }

  void resetVideos() {
    _nextPageToken = '';
    _videos = [];
    emit(VideosInitial());
  }
}
