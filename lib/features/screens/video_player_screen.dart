// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class VideoPlayerScreen extends StatelessWidget {
//   final String videoId;

//   VideoPlayerScreen({required this.videoId});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
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
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class VideoPlayerScreen extends StatelessWidget {
  final String videoId;

  VideoPlayerScreen({required this.videoId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InAppWebView Video'),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: WebUri('https://www.youtube.com/watch?v=$videoId')),
        initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(
            useOnDownloadStart: true, // Handle downloads
            mediaPlaybackRequiresUserGesture: false, // Enable autoplay
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
        onConsoleMessage: (InAppWebViewController controller, ConsoleMessage consoleMessage) {
          // Handle console messages
        },
        // Add more event handlers as needed
      ),
    );
  }
}
