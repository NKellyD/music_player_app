import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:music_player_app/controller/player_controller.dart';
import 'package:on_audio_query/on_audio_query.dart';

import '../const/colors.dart';
import '../const/text_style.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(PlayerController());
    return Scaffold(
      backgroundColor: bgDarkColor,
      appBar: AppBar(
        backgroundColor: bgDarkColor,
        leading: const Icon(Icons.sort_rounded,color: whiteColor,),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: whiteColor,),),
        ],
        title:  const Text('Beats',
          style:TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontFamily: 'Calibri',
            fontWeight: FontWeight.bold,
          ),),

      ),
      body: FutureBuilder<List<SongModel>>(
          future: controller.audioQuery.querySongs(
            ignoreCase: true,
            orderType: OrderType.ASC_OR_SMALLER,
            sortType: null,
            uriType: UriType.EXTERNAL,
          ),
          builder: (BuildContext context, snapshot){

          }
      )
    );
  }
}

// Padding(
// padding: const EdgeInsets.all(8.0),
// child: ListView.builder(
// physics: const BouncingScrollPhysics(),
// itemCount: 100,
// itemBuilder: (BuildContext context, int index){
// return Container(
// margin: const EdgeInsets.only(bottom: 4),
// child:   ListTile(
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(12)
// ),
// tileColor: bgColor,
// title: Text(
// 'Music name',
// style: TextStyle(
// color: Colors.white,
// fontSize: 15,
// fontFamily: 'Calibri'
// ),),
// subtitle: Text(
// 'Artist name',
// style: TextStyle(
// color: Colors.white,
// fontSize: 12,
// fontFamily: 'Calibri'
// ),),
// leading: Icon(Icons.music_note,color: whiteColor,size: 32,),
// trailing: Icon(Icons.play_arrow,color: whiteColor,size: 26,),
// ),
// );
// }
// ),
// )