
import 'package:cllubb/modules/App/home/widgets_home/listview_activity.dart';
import 'package:cllubb/modules/App/home/widgets_home/listview_courses.dart';
import 'package:cllubb/modules/App/home/widgets_home/listview_forums.dart';
import 'package:cllubb/modules/App/home/widgets_home/listview_groups.dart';
import 'package:cllubb/shared/colors/colors.dart';
import 'package:flutter/material.dart';
import 'widgets_home/listview_memeber.dart';
import 'widgets_home/listview_myprogress.dart';
import 'widgets_home/listview_notification.dart';
import 'widgets_home/widget_header.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Padding(
        padding: kPadding,
        child: ListView(
          children: [
            Column(
              children: [
                WidgetHeader(
                  title: 'Members',
                  onTap: (){},
                ),
                const ListViewMember(),
                Divider(
           color: Theme.of(context).dividerTheme.color,
        ),
                WidgetHeader(
                  title: 'Activity',
                  onTap: (){},
                ),
                const Padding(
                  padding: kDefaultPaddingVertical,
                  child:  ListViewActivity(),
                ),
                Divider(
                  color: Theme.of(context).dividerTheme.color,
                ),
                WidgetHeader(
                  title: 'Courses',
                  onTap: (){},
                ),
                const SizedBox(height: 10,),
                const  ListViewCourses(),
                const SizedBox(height: 5,),
                Divider(
                  color: Theme.of(context).dividerTheme.color,
                ),
                WidgetHeader(
                  title: 'Forums',
                  onTap: (){},
                ),
                const SizedBox(height: 10,),
                const ListViewForums(),
                const SizedBox(height: 5,),
                Divider(
                  color: Theme.of(context).dividerTheme.color,
                ),
                WidgetHeader(
                  title: 'Groups',
                  onTap: (){},
                ),
                const ListViewGroups(),
                const SizedBox(height: 5,),
                Divider(
                  color: Theme.of(context).dividerTheme.color,
                ),
                WidgetHeader(
                  title: 'Notification',
                  onTap: (){},
                ),
                const Padding(
                  padding: kDefaultPaddingVertical,
                  child:  ListViewNotification(),
                ),
                const SizedBox(height: 10,),
                Divider(
                  color: Theme.of(context).dividerTheme.color,
                ),
                const SizedBox(height: 10,),
                const WidgetHeaderProgress(
                  title: 'My Progress',
                ),
                const SizedBox(height: 15,),
                const ListViewMyProgress()
              ],
            ),

          ],
        ),
      ),
    );
  }
}
