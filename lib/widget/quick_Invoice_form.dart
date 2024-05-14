import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widget/custom_button.dart';
import 'package:responsive_dash_board/widget/title_text_field.dart';

class QuichInvoiceForm extends StatelessWidget {
  const QuichInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Customer name', hint: 'Type customer name')),
            SizedBox(
              height: 16,
            ),
            Expanded(
                child: TitleTextField(
                    title: 'Customer Email', hint: 'Type customer name')),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Item name', hint: 'Type customer name')),
            SizedBox(
              height: 16,
            ),
            Expanded(child: TitleTextField(title: 'Item mount', hint: 'USD')),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              textColor: Color(0xFF4DB7F2),
              backgroundColor: Colors.transparent,
            )),
            Expanded(child: CustomButton()),
          ],
        ),
      ],
    );
  }
}
