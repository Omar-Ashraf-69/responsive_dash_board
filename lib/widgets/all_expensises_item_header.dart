import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensiseItemHeader extends StatelessWidget {
  const AllExpensiseItemHeader({
    super.key,
    required this.image,
    this.imageColor,
    this.backgroundColor,
  });
  final String image;
  final Color? backgroundColor, imageColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 60, maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                    shape: const OvalBorder(),
                    color: backgroundColor ?? const Color(0xfffafafa)),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                        imageColor ?? const Color(0xff4eb7f2), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        Transform.rotate(
          angle: -3.14159266,
          child: Icon(
            Icons.arrow_back_ios,
            color: imageColor == null ? const Color(0xFF064061) : Colors.white,
          ),
        ),
      ],
    );
  }
}
