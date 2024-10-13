import 'package:flutter/material.dart';

import '../const/colors.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.close, color: Colors.transparent,),
              Column(
                children: [
                  Text('Singing now',style: textTheme.bodyMedium?.copyWith(color: CustomColor.primaryColor),),
                  const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(''),
                        radius: 10,
                      ),
                      Text('data')
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
