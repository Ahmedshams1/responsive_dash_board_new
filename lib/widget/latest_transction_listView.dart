import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widget/user_info_list_tile.dart';

class LatestTransctionListView extends StatelessWidget {
  const LatestTransctionListView({super.key});
  static const item2 = [
    UserInfoModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar1),
    UserInfoModel(
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com',
        image: Assets.imagesAvater2),
    UserInfoModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar3),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: item2
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: item2.length,
    //       itemBuilder: (context, index) {
    //         return IntrinsicWidth(
    //             child: UserInfoListTile(userInfoModel: item2[index]));
    //       }),
    // );
    //دى لو ليسته بتستخدم لعدد كبير انما الرو بتستخدم لعدد محدد
  }
}
