import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board_project/utils/app_images.dart';
import 'package:responsive_dash_board_project/utils/app_styles.dart';
import 'package:responsive_dash_board_project/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board_project/widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(child: CustomDrawer()),
          const SizedBox(
            width: 32,
          ),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Column(
                      children: [
                        AllExpensesHeader(),
                        const SizedBox(
                          height: 14,
                        ),
                        Container(
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: const BorderSide(
                                width: 1,
                                color: Color(0xfff1f1f1),
                              ),
                            ),
                          ),
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Card(
                                      shape: const CircleBorder(),
                                      elevation: 0.011,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SvgPicture.asset(
                                            Assets.imagesExpenses),
                                      )),
                                  Transform.rotate(
                                    angle: -3.14159266,
                                    child: const Icon(
                                      Icons.arrow_back_ios,
                                      color: Color(0xFF064061),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Income",
                                style: AppStyles.styleSemiBold16(context),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Apr 2022",
                                style: AppStyles.styleRegular12(context),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "\$20,122",
                                style: AppStyles.styleSemiBold24(context),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
