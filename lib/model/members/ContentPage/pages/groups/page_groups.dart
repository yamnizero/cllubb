import 'package:flutter/material.dart';

import 'widget/widget_item_group.dart';

class PageGroups extends StatelessWidget {
  const PageGroups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        title: Text(
          'Groups',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              itemCount:2,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context,index) => Divider(height: 10,thickness: 1,),
              itemBuilder:(context,index)=>WidgetItemGroup() ,

            ),
          ],
        ),
      ),
    );
  }
}
