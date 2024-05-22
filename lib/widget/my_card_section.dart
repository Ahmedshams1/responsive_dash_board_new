import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widget/dots_indicater.dart';
import 'package:responsive_dash_board/widget/my_card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 420,
          child: Text(
            'MY Card',
            style: AppStyles.styleSemiBold20,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        MyCardPageView(
          pageController: pageController,
        ),
        SizedBox(
          height: 20,
        ),
        DotsIndicator(
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}
