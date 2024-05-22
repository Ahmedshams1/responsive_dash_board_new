import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transection_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransectionItem extends StatelessWidget {
  const TransectionItem({super.key, required this.transectionModel});
  final TransectionModel transectionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transectionModel.title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          transectionModel.data,
          style:
              AppStyles.styleRegular16.copyWith(color: const Color(0xFFAAAAAA)),
        ),
        trailing: Text(
          transectionModel.amount,
          style: AppStyles.styleSemiBold20.copyWith(
            color: transectionModel.isWithdrawal
                ? const Color(0xFFF3735E)
                : const Color(0xFF7CD87A),
          ),
        ),
      ),
    );
  }
}
