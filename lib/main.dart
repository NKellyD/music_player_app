import 'package:flutter/material.dart';

import 'views/music_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beats',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

          fontFamily: "Calibri",
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0
          )

      ),
      home: const MusicPlayer(),
    );
  }

}



