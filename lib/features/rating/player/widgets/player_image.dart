import 'package:basketball/api/models/player.dart';
import 'package:basketball/features/shared/error_image_widget.dart';
import 'package:flutter/material.dart';

class PlayerImage extends StatelessWidget {
  const PlayerImage({
    super.key,
    required this.player,
  });

  final Player player;

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            ErrorImageWidget(side: 200),
          ],
        ),
      ],
    );
  }
}
