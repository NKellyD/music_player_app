import 'package:flutter/material.dart';
import 'package:music_player_app/views/widgets/art_work_image.dart';

import '../const/colors.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  Color songColor = const Color(0xFF251117);
  String artisteName ='';
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: songColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Column(
            children: [
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.close, color: Colors.transparent,),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Singing now',style: textTheme.bodyMedium?.copyWith(color: CustomColor.primaryColor),),
                      const SizedBox(height: 5,),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage: NetworkImage(
                               "https://img.freepik.com/vecteurs-libre/notes-profil-musique-fond_23-2147492175.jpg?t=st=1728806962~exp=1728810562~hmac=2a49e7937b1c7431eba543096675a507a5b4a78ce4afe05a2adb8ae82843e996&w=740"),
                            radius: 20,
                          ),
                          const SizedBox(width: 5,),
                          Text(artisteName,style: textTheme.bodyLarge?.copyWith(color: Colors.white),)
                        ],
                      )
                    ],
                  ),
                  const Icon(Icons.close, color: Colors.white,),
                ],
              ),
              const Expanded(
                  flex:2,
                  child: Center(
                child: ArtWorkImage(image: "https://img.freepik.com/vecteurs-libre/notes-profil-musique-fond_23-2147492175.jpg?t=st=1728806962~exp=1728810562~hmac=2a49e7937b1c7431eba543096675a507a5b4a78ce4afe05a2adb8ae82843e996&w=740"),
              )),
              Expanded(child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sleeping Beauty',style: textTheme.titleLarge?.copyWith(color: Colors.white),),
                          Text('End of the World, Epik High',style: textTheme.titleMedium?.copyWith(color: Colors.white),),
                        ],
                      ),
                      const Icon(Icons.favorite,color: CustomColor.primaryColor,)
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
