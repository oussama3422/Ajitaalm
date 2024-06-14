import 'package:ajitstafd/features/screens/video_player_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/videos_cubit.dart';
import '../../utils/data.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: languages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(languages[index].name),
                  onTap: () {
                    BlocProvider.of<VideosCubit>(context)
                        .fetchVideos(languages[index].query);
                  },
                );
              },
            ),
          ),
          Expanded(
            child: BlocBuilder<VideosCubit, VideosState>(
              builder: (context, state) {
                if (state is VideosLoading) {
                  return Center(child: CircularProgressIndicator());
                } else if (state is VideosLoaded) {
                  return ListView.builder(
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
                  return Center(child: Text('Select a programming language'));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
