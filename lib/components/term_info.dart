import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'package:kimbap/models/term.dart';

class TermInfo extends StatelessWidget {
  const TermInfo({super.key, required this.term});
  final TermModel term;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 15,
          top: 15,
          bottom: 15,
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    term.krWord,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    term.engWord,
                    style: const TextStyle(fontSize: 18),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(term.sound));
              },
              icon: const Icon(
                Icons.multitrack_audio,
              ),
            )
          ],
        ),
      ),
    );
  }
}
