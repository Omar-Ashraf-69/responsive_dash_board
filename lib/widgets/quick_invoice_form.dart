import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer Name',
                hintText: 'Type Customer Name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hintText: 'Type Customer Email',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item Name',
                hintText: 'Type Item Name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                title: 'Item Amount',
                hintText: 'Type Item Amount',
              ),
            ),
          ],
        )
      ],
    );
  }
}
