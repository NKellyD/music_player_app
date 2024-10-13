import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:music_player_app/views/home_screen.dart';
import 'package:music_player_app/views/music_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Beats',
      home: const MusicPlayer(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       fontFamily: "Calibri",
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
      ),

    );
  }
}


