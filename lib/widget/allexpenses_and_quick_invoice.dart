import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/all_expxpenses.dart';
import 'package:responsive_dash_board/widget/quick_invoice.dart';

class AllExpensessAndQuickInvoice extends StatelessWidget {
  const AllExpensessAndQuickInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 48,
        ),
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
      ],
    );
  }
}
