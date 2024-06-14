// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import '../../bloc/videos_cubit.dart';
// import '../models/lang_model.dart';

// class LessonsPage extends StatelessWidget {
//   final LangModel langModel;

//   LessonsPage({required this.langModel});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('${langModel.langName} Lessons'),
//       ),
//       body: BlocProvider(
//         create: (_) => VideosCubit()..fetchVideos(langModel.langName),
//         child: BlocBuilder<VideosCubit, VideosState>(
//           builder: (context, state) {
//             if (state is VideosLoading) {
//               return Center(child: CircularProgressIndicator());
//             } else if (state is VideosLoaded) {
//               return ListView.builder(
//                 itemCount: state.videos.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     leading: Image.network(
//                       state.videos[index].thumbnailUrl,
//                       width: 100,
//                       height: 56,
//                       fit: BoxFit.cover,
//                     ),
//                     title: Text(state.videos[index].title),
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => VideoPlayerScreen(
//                             videoId: state.videos[index].videoId,
//                           ),
//                         ),
//                       );
//                     },
//                   );
//                 },
//               );
//             } else if (state is VideosError) {
//               return Center(child: Text(state.message));
//             } else {
//               return Center(child: Text('No lessons available'));
//             }
//           },
//         ),
//       ),
//     );
//   }
// }

// class VideoPlayerScreen extends StatelessWidget {
//   final String videoId;

//   VideoPlayerScreen({required this.videoId});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('YouTube Video'),
//       ),
//       body: Center(
//         child: YoutubePlayer(
//           controller: YoutubePlayerController(
//             initialVideoId: videoId,
//             flags: YoutubePlayerFlags(
//               autoPlay: true,
//               mute: false,
//             ),
//           ),
//           showVideoProgressIndicator: true,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import '../../bloc/videos_cubit.dart';
import '../models/lang_model.dart';

class LessonsPage extends StatelessWidget {
  final LangModel langModel;

  LessonsPage({required this.langModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${langModel.langName} Lessons'),
      ),
      body: BlocProvider(
        create: (_) => VideosCubit()..fetchVideos(langModel.langName),
        child: _LessonsView(langModel: langModel),
      ),
    );
  }
}

class _LessonsView extends StatelessWidget {
  final LangModel langModel;

  _LessonsView({required this.langModel});

  final ScrollController _scrollController = ScrollController();

  void _setupScrollController(BuildContext context) {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent) {
        context
            .read<VideosCubit>()
            .fetchVideos(langModel.langName, isNextPage: true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _setupScrollController(context);

    return BlocBuilder<VideosCubit, VideosState>(
      builder: (context, state) {
        if (state is VideosLoading &&
            context.read<VideosCubit>().videos.isEmpty) {
          return Center(child: CircularProgressIndicator());
        } else if (state is VideosLoaded) {
          return ListView.builder(
            controller: _scrollController,
            itemCount: state.videos.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.network(
                  state.videos[index].thumbnailUrl,
                  width: 100,
                  height: 56,
                  fit: BoxFit.cover,
                ),
                title: Text(state.videos[index].title),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideoPlayerScreen(
                        videoId: state.videos[index].videoId,
                      ),
                    ),
                  );
                },
              );
            },
          );
        } else if (state is VideosError) {
          return Center(child: Text(state.message));
        } else {
          return Center(child: Text('No lessons available'));
        }
      },
    );
  }
}

class VideoPlayerScreen extends StatelessWidget {
  final String videoId;

  VideoPlayerScreen({required this.videoId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: WebUri.uri(
            Uri.parse('https://www.youtube.com/watch?v=$videoId'),
          ),
        ),
        initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(
            useOnDownloadStart: true,
            mediaPlaybackRequiresUserGesture: false,
          ),
        ),
        onWebViewCreated: (InAppWebViewController controller) {
          // Optionally, you can use the controller for further operations
        },
        onLoadStart: (InAppWebViewController controller, Uri? url) {
          // Handle load start
        },
        onLoadStop: (InAppWebViewController controller, Uri? url) {
          // Handle load stop
        },
        onProgressChanged: (InAppWebViewController controller, int progress) {
          // Handle progress change
        },
        onDownloadStart: (InAppWebViewController controller, Uri url) {
          // Handle download start (if useOnDownloadStart is true)
        },
        onConsoleMessage:
            (InAppWebViewController controller, ConsoleMessage consoleMessage) {
          // Handle console messages
        },
        // Add more event handlers as needed
      ),
    );
  }
}
