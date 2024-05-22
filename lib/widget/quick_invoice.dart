import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/custom_background_container.dart';
import 'package:responsive_dash_board/widget/latest_transction.dart';
import 'package:responsive_dash_board/widget/quick_Invoice_form.dart';
import 'package:responsive_dash_board/widget/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundCountainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransction(),
          Divider(
            height: 48,
            color: Color(0xfff1F1F1),
          ),
          QuichInvoiceForm()
        ],
      ),
    );
  }
}
