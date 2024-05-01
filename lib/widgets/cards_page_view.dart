import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/widgets/card.dart';

class CardPageView extends StatelessWidget {
  const CardPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpandablePageView(
          controller: pageController,
          children: List.generate(
            3,
            (index) => const CardWidget(),
          ),
        ),
      ],
    );
  }
}
