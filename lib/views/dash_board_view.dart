import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board_project/widgets/desktop_layout.dart';
import 'package:responsive_dash_board_project/widgets/tablet_dashboard.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f9fa),
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const TabletDashBoard(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
