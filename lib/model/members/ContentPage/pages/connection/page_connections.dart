import 'package:cllubb/model/members/ContentPage/pages/connection/widgets/widget_buttonsheet_all_profile_type.dart';
import 'package:cllubb/shared/colors/colors.dart';
import 'package:cllubb/shared/colors/compon.dart';
import 'package:flutter/material.dart';

import 'widgets/widget_buttonsheet_recently_active.dart';

class PageConnections extends StatefulWidget {
  const PageConnections({Key? key}) : super(key: key);

  @override
  State<PageConnections> createState() => _PageConnectionsState();
}

class _PageConnectionsState extends State<PageConnections> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        title: Text(
          'Connections',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: dropButton(

                      text: 'Recently Active',
                      function: ()
                      {
                        setState(() {
                          buttonSheetRecentlyActive(context);
                        });
                      }
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: dropButton(

                      text: 'All Profile Types',
                      function: ()
                      {
                        setState(() {
                          buttonSheetAllProfileType(context);
                        });
                      }
                  ),

                ),
              ],
            ),
          ),
          Divider(height: 10,thickness: 1,),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage(kImage),
            ),
            title: Text('Ahmed',  style: Theme.of(context).textTheme.bodyText1,),
            subtitle: Text('Admin',  style: Theme.of(context).textTheme.caption,),
          ),
        ],
      ),
    );
  }
}
