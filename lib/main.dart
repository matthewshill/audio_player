import 'package:audio_player/audio_player_widget.dart';
import 'package:audio_player/audio_player_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => AudioPlayerProvider(),
      ),
    ],
    child: const MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child:AudioPlayerWidget(),
        ),
      ),
    );
  }
}



