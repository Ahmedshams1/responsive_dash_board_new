import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/custom_background_container.dart';
import 'package:responsive_dash_board/widget/my_card_section.dart';
import 'package:responsive_dash_board/widget/transection_hestory.dart';

class MyCardAndTransectionHistorySection extends StatelessWidget {
  const MyCardAndTransectionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundCountainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TransectionHistory(),
        ],
      ),
    );
  }
}
