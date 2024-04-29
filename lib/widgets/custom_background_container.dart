import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key,
    required this.widget, this.padding,
  });
  final Widget widget;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(padding?? 24),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: widget);
  }
}
