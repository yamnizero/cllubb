import 'package:cllubb/model/members/ContentPage/pages/groups/details_page_groups/widgets/widget_item_page_details.dart';
import 'package:flutter/material.dart';



class ListViewDetails extends StatelessWidget {
  const ListViewDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context,index) =>  Container(),
        itemCount: 1,
        itemBuilder:(context,index) =>  const WidgetItemPageDetails(
          // viewModel.settingpage[index],

        ),
      ),
    );
  }
}