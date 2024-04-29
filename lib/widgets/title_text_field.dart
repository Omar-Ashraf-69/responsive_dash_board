
import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/utils/app_styles.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField(
      {super.key, required this.hintText, required this.title});
  final String hintText;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(
          hintText: hintText,
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xfffafafa),
        hintText: hintText,
        hintStyle:
            AppStyles.styleRegular16(context).copyWith(color: Colors.grey),
        border: buildBoarder(),
        enabledBorder: buildBoarder(),
        focusedBorder: buildBoarder(),
      ),
    );
  }

  OutlineInputBorder buildBoarder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xfffafafa),
      ),
    );
  }
}
