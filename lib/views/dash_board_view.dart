import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board_project/widgets/custom_drawer.dart';
import 'package:responsive_dash_board_project/widgets/desktop_layout.dart';
import 'package:responsive_dash_board_project/widgets/mobile_layout.dart';
import 'package:responsive_dash_board_project/widgets/tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xfff7f9fa),
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: const Color(0xfffafafa),
              surfaceTintColor: const Color(0xfffafafa),
              elevation: 0,
              leading: IconButton(
                  onPressed: () => _scaffoldKey.currentState!.openDrawer(),
                  icon: const Icon(Icons.menu)))
          : null,
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileDashboardLayout(),
        tabletLayout: (context) => const TabletDashBoard(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
