import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transection_model.dart';
import 'package:responsive_dash_board/widget/transection_item.dart';

class TransectionHistoryListView extends StatelessWidget {
  const TransectionHistoryListView({super.key});
  static const items = [
    TransectionModel(
        title: 'Cash Withdrawal',
        data: '13 Apr,2022',
        amount: r'$20,129',
        isWithdrawal: true),
    TransectionModel(
        title: 'Landing Page project',
        data: '13 Apr,2022',
        amount: r'$20,129',
        isWithdrawal: false),
    TransectionModel(
        title: 'Juni Mobile App Project',
        data: '13 Apr,2022',
        amount: r'$20,129',
        isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return TransectionItem(transectionModel: items[index]);
        });
  }
}
