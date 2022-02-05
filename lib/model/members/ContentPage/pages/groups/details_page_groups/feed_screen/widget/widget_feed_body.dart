import 'package:cllubb/shared/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class WidgetFeedBody extends StatelessWidget {
  const WidgetFeedBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 23.0,
                      backgroundImage: AssetImage(kImage),
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Adele joined the group Teaching Ideas',
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.bodyText2),
                          SizedBox(height: 5,),
                          Text('a year ago',style: Theme.of(context).textTheme.caption),

                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children:  [
                        Icon(AntDesign.like1,size: 17.0,
                          color: ThemeData.fallback().iconTheme.color,
                        ),
                        SizedBox(width: 5,),
                        Text('0',style:Theme.of(context).textTheme.caption),
                        SizedBox(width: 15,),
                        Icon(AntDesign.wechat,size: 17.0,color: ThemeData.fallback().iconTheme.color,),
                        SizedBox(width: 5,),
                        Text('0',style:Theme.of(context).textTheme.caption),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(MaterialIcons.more_horiz,
                          size: 22,color: ThemeData.fallback().iconTheme.color,
                        ),

                      ],
                    ),

                  ],
                ),
                SizedBox(height: 15,),
                Divider(height: 10,thickness: 1,)
              ],
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 23.0,
                      backgroundImage: AssetImage(kImage),
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Adele joined the group Teaching Ideas',
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.bodyText2),
                          SizedBox(height: 5,),
                          Text('a year ago',style: Theme.of(context).textTheme.caption,),

                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  // color: Colors.red,
                  width: MediaQuery.of(context).size.width,
                  height:250,
                  child:   Image.asset(
                    kImage,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      children: [
                        Icon(AntDesign.like1,size: 17.0,
                          color: ThemeData.fallback().iconTheme.color,
                        ),
                        SizedBox(width: 5,),
                        Text('0',style:Theme.of(context).textTheme.caption),
                        SizedBox(width: 15,),
                        Icon(AntDesign.wechat,size: 17.0,
                          color: ThemeData.fallback().iconTheme.color,
                        ),
                        SizedBox(width: 5,),
                        Text('0',style:Theme.of(context).textTheme.caption),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(MaterialIcons.more_horiz,
                          size: 22, color: ThemeData.fallback().iconTheme.color,
                        ),

                      ],
                    ),

                  ],
                ),
                SizedBox(height: 15,),
                Divider(height: 10,thickness: 1,)
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 23.0,
                      backgroundImage: AssetImage(kImage),
                    ),
                    SizedBox(width: 15,),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Adele commented on the post, After Avengers:Endgame,Should Marvel take 2020 off?',
                              maxLines: 3,
                              overflow: TextOverflow.clip,
                              style: Theme.of(context).textTheme.bodyText2
                          ),
                          SizedBox(height: 5,),
                          Text('a year ago',style: Theme.of(context).textTheme.caption),

                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,

                        borderRadius: BorderRadius.only(
                          topLeft:Radius.circular(20),

                          topRight:  Radius.circular(20),
                        ),
                      ),
                      child:  Padding(
                        padding: const EdgeInsets.only(left: 30.0,right: 15.0),
                        child: Center(
                          child: Text('Adele commented on the post, After Avengers:Endgame,Should Marvel take 2020 off?',
                              maxLines: 3,
                              overflow: TextOverflow.clip,
                              style: Theme.of(context).textTheme.bodyText2
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.only(
                          bottomLeft:Radius.circular(20),
                          bottomRight:  Radius.circular(20),
                        ),
                      ),
                      child:  Padding(
                        padding: const EdgeInsets.only(left: 30.0,right: 15.0),
                        child: Row(
                          children: [
                            Icon(Ionicons.arrow_forward_circle_outline,color: Colors.grey,),
                            SizedBox(width: 5,),
                            Center(
                              child: Text('View Post',
                                  maxLines: 3,
                                  overflow: TextOverflow.clip,
                                 style: Theme.of(context).textTheme.bodyText2
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(AntDesign.like1,size: 17.0,color: Colors.grey,),
                        SizedBox(width: 5,),
                        Text('0',
                            style: Theme.of(context).textTheme.caption
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(MaterialIcons.more_horiz,
                          size: 22, color: ThemeData.fallback().iconTheme.color,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Divider(height: 10,thickness: 1,)
              ],
            ),
          ),
        ),

      ],
    );
  }
}
