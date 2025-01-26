import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'package:kimbap/colors/colors.dart';
import 'package:kimbap/models/item.dart';

class Info extends StatelessWidget {
  const Info({super.key, required this.number});
  final Item number;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: pink,
      height: 70,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 20),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    number.krWord,
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    number.engWord,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(number.sound));
              },
              icon: Icon(
                Icons.multitrack_audio,
              ),
            )
          ],
        ),
      ),
    );
  }
}
