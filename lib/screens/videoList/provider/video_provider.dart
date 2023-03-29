import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class video_provider extends ChangeNotifier {

  List VideoList = [
    "assets/videos/1.mp4",
    "assets/videos/2.mp4",
    "assets/videos/4.mp4",
    "assets/videos/3.mp4",
  ];

  List images = [
    "assets/images/kesariya.webp",
    "assets/images/pathaan.webp",
    "assets/images/ranbir song.jpg",
    "assets/images/salman khan song.jpeg"
  ];

  ChewieController? chewieController;
  VideoPlayerController? videoPlayerController;
  int selectedVideoIndex = 0;

  void initVideo() {

    videoPlayerController = VideoPlayerController.asset("${VideoList[selectedVideoIndex]}");
    videoPlayerController?.initialize();

    chewieController = ChewieController(
        videoPlayerController: videoPlayerController!,
        autoPlay: false,
        looping: false);
  }

  void changeIndex(int index)
  {
    selectedVideoIndex = index;
    notifyListeners();
  }
}