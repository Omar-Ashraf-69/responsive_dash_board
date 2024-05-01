import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/widgets/card_dot.dart';

class DotsIndecator extends StatelessWidget {
  const DotsIndecator({super.key, required this.currentIndex});
  final int currentIndex ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) =>  Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CardDotWidget(isActive: currentIndex == index ),
        ),
      ),
    );
  }
}
