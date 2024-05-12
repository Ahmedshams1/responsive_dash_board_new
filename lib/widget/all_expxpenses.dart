import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/all_expenses_header.dart';
import 'package:responsive_dash_board/widget/all_expensess_items_listView.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            AllExpensesHeader(),
            SizedBox(
              height: 16,
            ),
            AllExpensessItemsListView(),
          ],
        ),
      ),
    );
  }
}
