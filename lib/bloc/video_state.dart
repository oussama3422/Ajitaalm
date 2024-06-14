part of 'videos_cubit.dart';



abstract class VideosState {}

class VideosInitial extends VideosState {}

class VideosLoading extends VideosState {}

class VideosLoaded extends VideosState {
  final List<YouTubeVideo> videos;

  VideosLoaded(this.videos);
}

class VideosError extends VideosState {
  final String message;

  VideosError(this.message);
}
