import 'package:flutter/material.dart';

import '../const/colors.dart';
import '../const/text_style.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.sort_rounded,color: bgColor,),
        title:  Text('Beats',
          style: myStyle(
            family: bold,
            size: 18,
          )),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: bgColor,),),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 100,
            itemBuilder: (BuildContext context, int index){
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child:  ListTile(
                  title: Text(
                    'Music name',
                    style: myStyle(
                    family: bold,
                    size: 15
                  ),),
                  subtitle: Text(
                    'Artist name',
                    style: myStyle(
                        family: regular,
                        size: 12
                    ),),
                  leading: const Icon(Icons.music_note,color: whiteColor,size: 32,),
                  trailing: const Icon(Icons.play_arrow,color: whiteColor,size: 26,),
                ),
              );
            }
        ),
      )
    );
  }
}
