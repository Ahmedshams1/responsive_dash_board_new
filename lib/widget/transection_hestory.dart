import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widget/transection_History_listView.dart';

class TransectionHistory extends StatelessWidget {
  const TransectionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransectionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style:
              AppStyles.styleRegular16.copyWith(color: const Color(0xFFAAAAAA)),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransectionHistoryListView(),
      ],
    );
  }
}

class TransectionHistoryHeader extends StatelessWidget {
  const TransectionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Transection History',
          style: AppStyles.styleSemiBold20,
        ),
        Text(
          'See All',
          style: AppStyles.styleMeduim16.copyWith(
            color: const Color(0xFF4EB7F2),
          ),
        )
      ],
    );
  }
}
