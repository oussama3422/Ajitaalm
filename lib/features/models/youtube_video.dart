class YouTubeVideo {
  final String title;
  final String videoId;
  final String thumbnailUrl;

  YouTubeVideo({required this.title, required this.videoId, required this.thumbnailUrl});

  factory YouTubeVideo.fromJson(Map<String, dynamic> json) {
    return YouTubeVideo(
      title: json['snippet']['title'],
      videoId: json['id']['videoId'],
      thumbnailUrl: json['snippet']['thumbnails']['high']['url'],
    );
  }
}
