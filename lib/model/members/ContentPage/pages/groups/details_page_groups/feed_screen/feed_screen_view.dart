import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/widget_create_post.dart';
import 'widget/widget_feed_body.dart';

class FeedScreenView extends StatefulWidget {
  const FeedScreenView({Key? key}) : super(key: key);

  @override
  State<FeedScreenView> createState() => _FeedScreenViewState();
}

class _FeedScreenViewState extends State<FeedScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        title: Text(
          'Feed',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: ()
              {
                Get.to(()=> const WidgetCreatePost(),
                    duration: const Duration(milliseconds: 500),
                    transition: Transition.rightToLeftWithFade
                );
              },
              child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  child: Icon(Icons.edit,size: 22,color: Colors.black,)),
            ),
          ),
        ],
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
         child: WidgetFeedBody(),
     ),
    );
  }
}
