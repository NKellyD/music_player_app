import 'package:flutter/material.dart';

import '../const/colors.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beats',
          style: TextStyle(
          fontSize: 18,
          fontFamily: 'bold',
            color: whiteColor
        ),),
      ),
      body: Container(),
    );
  }
}
