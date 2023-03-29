import 'package:flutter/material.dart';
import 'package:media_booster_vedio_player/screens/vedioScreen/view/video_screen.dart';
import 'package:media_booster_vedio_player/screens/videoList/provider/video_provider.dart';
import 'package:media_booster_vedio_player/screens/videoList/view/videoList_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => video_provider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => videoList_screen(),
          'video':(context) => video_screen(),
        },
      ),
    ),
  );
}