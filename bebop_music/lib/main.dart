import 'package:bebop_music/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:just_audio_background/just_audio_background.dart';

Future<void> main() async {
  await JustAudioBackground.init(
    androidNotificationChannelId: 'com.ryanheise.bg_demo.channel.audio',
    androidNotificationChannelName: 'Audio playback',
    androidNotificationOngoing: true,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BeBop',
      theme: ThemeData(
          primarySwatch: Colors.blueGrey, fontFamily: 'PoppinsMedium'),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
