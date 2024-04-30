import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/utils/app_images.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: AspectRatio(
        aspectRatio: 420 / 215,
        child: Container(
          decoration: ShapeDecoration(
            image: const DecorationImage(
                image: AssetImage(Assets.imagesCardBackground)),
            color: const Color(0xff4eb7f2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
