import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/all_expxpenses.dart';
import 'package:responsive_dash_board/widget/custom_drawer.dart';
import 'package:responsive_dash_board/widget/quick_invoice.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Column(
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
              ),
            ))
      ],
    );
  }
}
