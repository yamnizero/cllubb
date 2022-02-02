import 'package:flutter/material.dart';

import 'widgets/widget_list_view_info.dart';
import 'widgets/widgets_card_profile.dart';

class PageProfile extends StatelessWidget {
  const PageProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children:  [
          WidgetCardProfile(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 15.0),
            child: Text('General Information',

              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: SizedBox(
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context,index) => WidgetListViewInfo(),
                separatorBuilder: (context,index) => SizedBox(height: 1,),
                itemCount:1,
              ),
            ),
          ),
          SizedBox(height: 25,),
        ],
      )
    );
  }
}
