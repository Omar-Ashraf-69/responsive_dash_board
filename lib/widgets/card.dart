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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding:
                    const EdgeInsets.only(left: 31, right: 42, top: 8),
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
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "0918 8124 6521 9531",
                      style: AppStyles.styleSemiBold24(context)
                          .copyWith(color: Colors.white),
                    ),
                    Text(
                      "12/20 - 124",
                      style: AppStyles.styleRegular16(context)
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 26),
            ],
          ),
        ),
      ),
    );
  }
}
