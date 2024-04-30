import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board_project/utils/app_images.dart';
import 'package:responsive_dash_board_project/utils/app_styles.dart';

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
          padding: const EdgeInsets.only(
            right: 20,
            bottom: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.only(left: 24, right: 18),
                title: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'Card Name',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                titleTextStyle: AppStyles.styleMedium16(context),
                subtitle: const Text('Omar Ashraf'),
                subtitleTextStyle: AppStyles.styleMedium20(context),
                trailing: SvgPicture.asset(Assets.imagesGallery),
              ),
              const Spacer(),
              Text(
                "0918 8124 6521 9531",
                style: AppStyles.styleSemiBold24(context)
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                "12/20 - 124",
                style: AppStyles.styleMedium16(context)
                    .copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
