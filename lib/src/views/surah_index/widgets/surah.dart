import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

import '../../../controllers/surah_controller.dart';

class Surah extends GetView<SurahController> {
  const Surah({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SurahController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text('${controller.surahName}'),
          ),
          body: Column(
            children: [
              StreamBuilder(
                stream: controller.player.playerStateStream,
                builder: (_, snapshot) {
                  final playerState = snapshot.data;
                  final processingState = playerState?.processingState;
                  return switch (processingState) {
                    ProcessingState.loading ||
                    ProcessingState.buffering =>
                      const CircularProgressIndicator(),
                    ProcessingState.completed => IconButton(
                        icon: const Icon(Icons.replay),
                        onPressed: () => controller.player.seek(
                          Duration.zero,
                        ),
                      ),
                    ProcessingState.ready => IconButton(
                        icon: controller.player.playing
                            ? const Icon(Icons.pause)
                            : const Icon(Icons.play_arrow),
                        onPressed: () => controller.player.playing
                            ? controller.player.pause()
                            : controller.player.play(),
                      ),
                    ProcessingState.idle => IconButton(
                        icon: const Icon(Icons.play_arrow),
                        onPressed: () => controller.player.play(),
                      ),
                    _ => const CircularProgressIndicator(),
                  };
                },
              ),
              StreamBuilder<Duration>(
                  stream: controller.player.positionStream,
                  builder: (context, snapshot) {
                    return Slider(
                      value: controller.player.position.inSeconds.toDouble(),
                      max:
                          controller.player.duration?.inSeconds.toDouble() ?? 1,
                      onChanged: (value) {
                        controller.player
                            .seek(Duration(seconds: value.toInt()));
                        controller.update();
                      },
                    );
                  }),
              // Placeholder for Surah content
              Expanded(
                child: ListView.builder(
                  itemCount: 0, // Replace with actual verse count
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                          'Verse $index'), // Replace with actual verse text
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
