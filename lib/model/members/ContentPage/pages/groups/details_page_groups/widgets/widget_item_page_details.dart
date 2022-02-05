import 'package:cllubb/model/members/ContentPage/pages/groups/details_page_groups/feed_screen/feed_screen_view.dart';
import 'package:cllubb/model/members/ContentPage/pages/groups/details_page_groups/members_screen/members_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import '../../../widget_item_pages.dart';

class WidgetItemPageDetails extends StatelessWidget {

  // final WidgetItemPageDetails
  // settingContentModel;


  const WidgetItemPageDetails
      (
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
                leadingIcon: (MaterialIcons.timeline),
                title: 'Feed',
                num: 0,
                onTap: ()
                {
                  Get.to(()=> const FeedScreenView(),
                      duration: const Duration(milliseconds: 500),
                      transition: Transition.rightToLeftWithFade
                  );
                },
              ),
              Divider(
                color: Theme.of(context).dividerTheme.color,
              ),
              WidgetItemPages(
                leadingIcon: (MaterialIcons.card_membership),
                title: 'Members',
                num: 1,
                onTap: (){
                  Get.to(()=> const MembersScreenView(),
                      duration: const Duration(milliseconds: 500),
                      transition: Transition.rightToLeftWithFade
                  );
                },

              ),
              Divider(
                color: Theme.of(context).dividerTheme.color,
              ),
              WidgetItemPages(
                leadingIcon: (AntDesign.adduser),
                title: 'Photos',
                num: 4,
                onTap: ()
                {
                  // Get.to(()=> const PageConnections(),
                  //     duration: const Duration(milliseconds: 500),
                  //     transition: Transition.rightToLeftWithFade
                  // );
                },

              ),
              Divider(
                color: Theme.of(context).dividerTheme.color,
              ),
              WidgetItemPages(
                leadingIcon: (AntDesign.videocamera),
                title: 'Videos',
                num: 0,
                onTap: (){
                  // Get.to(()=> const PageGroups(),
                  //     duration: const Duration(milliseconds: 500),
                  //     transition: Transition.rightToLeftWithFade
                  // );
                },

              ),
              Divider(
                color: Theme.of(context).dividerTheme.color,
              ),
              WidgetItemPages(
                leadingIcon: (AntDesign.paperclip),
                title: 'Documents',
                num: 10,
                onTap: (){},

              ),
              Divider(
                color: Theme.of(context).dividerTheme.color,
              ),
              WidgetItemPages(
                leadingIcon: (AntDesign.wechat),
                title: 'Discussions',
                num: 0,
                onTap: (){},

              ),
              Divider(
                color: Theme.of(context).dividerTheme.color,
              ),
              WidgetItemPages(
                leadingIcon: (AntDesign.adduser),
                title: 'Send Invites',
                num: 0,
                onTap: (){},

              ),
              Divider(
                color: Theme.of(context).dividerTheme.color,
              ),
              WidgetItemPages(
                leadingIcon: (AntDesign.inbox),
                title: 'Send Messages',
                num: 2,
                onTap: (){},

              ),
              Divider(
                color: Theme.of(context).dividerTheme.color,
              ),
              WidgetItemPages(
                leadingIcon: (AntDesign.setting),
                title: 'Manage',
                num: 0,
                onTap: (){},

              ),
            ],
          ),
        ),
      ),
    );
  }


}