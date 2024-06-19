import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';
main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(

        primarySwatch: Colors.indigo,
      ),

      title: "FS App",
      home: VideoPlayerPage(),

    );
  }
}
class VideoPlayerPage extends StatefulWidget {
  const VideoPlayerPage({super.key});

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {

  late CustomVideoPlayerController _customVideoPlayerController;
  String AssetVideoPath = "Assets/video/video.mp4";

  @override
  void initState() {

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CustomVideoPlayer(customVideoPlayerController:_customVideoPlayerController,

    ),);
  }
  void initializeVideoPlayer(){
    CustomVideoPlayerController _CustomVideoPlayerController;
  _CustomVideoPlayerController = CustomVideoPlayerController.assets(AssetVideoPath)..initialize().then((value){
  setState(() {

  });
  });
_CustomVideoPlayerController = CustomVideoPlayerController(context: context, videoPlayerController:_customVideoPlayerController);

  }
}
