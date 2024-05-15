import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widget/all_expxpenses.dart';
import 'package:responsive_dash_board/widget/allexpenses_and_quick_invoice.dart';
import 'package:responsive_dash_board/widget/custom_drawer.dart';
import 'package:responsive_dash_board/widget/my_card.dart';
import 'package:responsive_dash_board/widget/my_card_page_view.dart';
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
            child: AllExpensessAndQuickInvoice(),
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: MyCardPageView(),
        ),
      ],
    );
  }
}
