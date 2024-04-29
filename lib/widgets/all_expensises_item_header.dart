
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensiseItemHeader extends StatelessWidget {
  const AllExpensiseItemHeader({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
            shape: const CircleBorder(),
            elevation: 0.011,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(image),
            )),
        Transform.rotate(
          angle: -3.14159266,
          child: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF064061),
          ),
        ),
      ],
    );
  }
}
