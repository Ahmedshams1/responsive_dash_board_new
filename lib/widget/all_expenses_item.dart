import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_model..dart';
import 'package:responsive_dash_board/widget/in_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isSelcted});
  final AllExpensessItemModel itemModel;
  final bool isSelcted;
  @override
  Widget build(BuildContext context) {
    return InActiveAllExpensesItem(itemModel: itemModel);
  }
}
