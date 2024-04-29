import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board_project/utils/app_styles.dart';
import 'package:responsive_dash_board_project/widgets/custom_background_container.dart';
import 'package:responsive_dash_board_project/widgets/latest_transaction.dart';
import 'package:responsive_dash_board_project/widgets/quick_invoice_form.dart';
import 'package:responsive_dash_board_project/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 12,
          ),
          LatestTransactions(),
          Divider(
            height: 48,
            color: Color(0xfffafafa),
          ),
          QuickInvoiceForm(),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              CustomButton(
                backgroundColor: Colors.transparent,
                buttonText: "Add more details",
              ),
              SizedBox(
                width: 24,
              ),
              CustomButton(
                buttonText: "Send Money",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.backgroundColor,
    required this.buttonText,
  });
  final Color? backgroundColor;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
        ),
        decoration: ShapeDecoration(
          color: backgroundColor ?? const Color(0xff4eb7f2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        height: 62,
        child: Center(
          child: Text(
            buttonText,
            style: backgroundColor == null
                ? AppStyles.styleSemiBold18(context)
                : AppStyles.styleSemiBold18(context)
                    .copyWith(color: const Color(0xff4eb7f2)),
          ),
        ),
      ),
    );
  }
}
