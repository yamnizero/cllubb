import 'package:cllubb/model/members/ContentPage/pages/profile/page_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import 'pages/widget_item_pages.dart';
import 'pages/widget_pages.dart';

class ListViewContent extends StatelessWidget {
  const ListViewContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context,index) =>  Container(),
        itemCount: 1,
        itemBuilder:(context,index) =>  const WidgetPages(
            // viewModel.settingpage[index],

      ),
      ),
    );
  }
}
