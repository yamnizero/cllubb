

import 'package:flutter/material.dart';

import 'tools_post.dart';

class WidgetCreatePost extends StatefulWidget {
  const WidgetCreatePost({Key? key}) : super(key: key);

  @override
  State<WidgetCreatePost> createState() => _WidgetCreatePostState();
}

class _WidgetCreatePostState extends State<WidgetCreatePost> {
  TextEditingController createPost = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Create a Post',
          style:  Theme.of(context).textTheme.bodyText1,
        ),

        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.2),
                radius: 15,
                child: Icon(
                  Icons.border_color_rounded,
                  color: Colors.white,
                  size: 18,
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height:MediaQuery.of(context).size.height/1.2,
                  child:  TextField(
                    controller:createPost ,
                    decoration: InputDecoration(
                        focusedBorder:  UnderlineInputBorder(
                          borderSide:  BorderSide(color: Colors.white),
                        ),
                        hintText: 'Write here or use @ to mention someone',
                        hintStyle:Theme.of(context).textTheme.bodyText2,
                    ),
                    maxLines:80,
                  ),
                ),
              ),
              Divider(height: 10,thickness: 1,),
              ToolsPos(context),
            ],
          ),
        ),
      ),
    );
  }
}
