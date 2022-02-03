

import 'package:cllubb/model/members/ContentPage/pages/profile/page_profile.dart';
import 'package:cllubb/model/members/ContentPage/pages/widget_item_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'connection/page_connections.dart';
import 'groups/page_groups.dart';

class SettingContentModel{
  String? title;
  IconData? icon;
  int? num;


  SettingContentModel({required this.title,required this.icon, this.num});
}

class WidgetPages extends StatelessWidget {

  // final WidgetPages settingContentModel;


  const WidgetPages(
      // this.settingContentModel,
      {Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context, ) {
    return   Card(
      color: Theme.of(context).cardTheme.color,
      elevation: 10.0,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              WidgetItemPages(
                  leadingIcon: (AntDesign.user),
                  title: 'Profile',
                  num: 0,
                  onTap: ()
                  {
                    Get.to(()=> const PageProfile(),
                        duration: const Duration(milliseconds: 500),
                        transition: Transition.rightToLeftWithFade
                    );
                  },
              ),
              Divider(
                color: Theme.of(context).dividerTheme.color,
              ),
              WidgetItemPages(
                  leadingIcon: (AntDesign.linechart),
                  title: 'TimeLine',
                num: 5,
                  onTap: (){},

              ),
              Divider(
                color: Theme.of(context).dividerTheme.color,
              ),
              WidgetItemPages(
                leadingIcon: (AntDesign.adduser),
                title: 'Connection',
                num: 4,
                onTap: ()
                {
                  Get.to(()=> const PageConnections(),
                      duration: const Duration(milliseconds: 500),
                      transition: Transition.rightToLeftWithFade
                  );
                },

              ),
              Divider(
                color: Theme.of(context).dividerTheme.color,
              ),
              WidgetItemPages(
                leadingIcon: (AntDesign.addusergroup),
                title: 'Groups',
                num: 0,
                onTap: (){
                  Get.to(()=> const PageGroups(),
                      duration: const Duration(milliseconds: 500),
                      transition: Transition.rightToLeftWithFade
                  );
                },

              ),
              Divider(
                color: Theme.of(context).dividerTheme.color,
              ),
              WidgetItemPages(
                leadingIcon: (AntDesign.picture),
                title: 'Photos',
                num: 10,
                onTap: (){},

              ),
              Divider(
                color: Theme.of(context).dividerTheme.color,
              ),
              WidgetItemPages(
                leadingIcon: (AntDesign.paperclip),
                title: 'Documents',
                num: 0,
                onTap: (){},

              ),
              Divider(
                color: Theme.of(context).dividerTheme.color,
              ),
              WidgetItemPages(
                leadingIcon: (AntDesign.videocamera),
                title: 'Videos',
                num: 7,
                onTap: (){},

              ),
            ],
          ),
        ),
      ),
    );
  }


}

