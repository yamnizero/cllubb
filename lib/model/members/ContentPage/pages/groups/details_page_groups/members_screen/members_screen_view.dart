import 'package:flutter/material.dart';

import 'widgets/widget_header_members.dart';
import 'widgets/widget_members.dart';

class MembersScreenView extends StatelessWidget {
  const MembersScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        title: Text(
          'Members',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(55),
            child:Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle: Theme.of(context).textTheme.caption,
                    prefixIcon: Icon(Icons.search,color: ThemeData.fallback().iconTheme.color,),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none
                    ),
                    contentPadding: EdgeInsets.zero,
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.5)
                ),
              ),
            )
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0,top: 15.0,right: 18.0),
          child: Column(
            children:   const [
              WidgetHeaderMembers(
                title: 'ORGANIZER',
              ),
              SizedBox(height: 20,),
              WidgetMembers(),
              SizedBox(height: 20,),
              WidgetHeaderMembers(
                title: 'MEMBERS',
              ),
              SizedBox(height: 20,),
              WidgetMembers(),

            ],
          ),
        ),
      ),
    );
  }
}
