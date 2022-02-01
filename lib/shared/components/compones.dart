

import 'package:cllubb/shared/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


TextStyle textSee = const TextStyle(color: Colors.blue,fontSize:12,fontWeight: FontWeight.bold);
TextStyle timeText = const TextStyle(color: Colors.grey,fontSize:12,);
TextStyle postText = const TextStyle(color: Colors.black);
TextStyle postForums = const TextStyle(color: Colors.grey,fontSize:15,);
TextStyle titleForums = const TextStyle(color: Colors.black,fontSize:18,);

Widget? buttonSheetFollow(context) {
  showModalBottomSheet(context: context,
      builder: (BuildContext c)
  {
    return Wrap(
      children: [
        Container(
          color: ThemeData.fallback().bottomSheetTheme.backgroundColor,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children:  [
                       const CircleAvatar(
                          radius: 15.0,
                          backgroundImage:AssetImage(kImage),
                        ),
                        const SizedBox(width: 15,),
                        Center(
                            child: Text(
                              'Mohammed',
                              style: Theme.of(context).textTheme.bodyText1,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.close,
                            size: 15.0,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                Divider(
                  height: 10,
                  color: Theme.of(context).dividerTheme.color,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(Icons.close),
                          const  SizedBox(width: 15,),
                            Center(child: Text(
                            'Unfollow',
                            style: Theme.of(context).textTheme.bodyText1)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
  );
}String token = '';


void showToast({
  required String text,
  required ToastStates states,
}) =>  Fluttertoast.showToast(
    msg: text,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 5,
    backgroundColor: chooseToastColor(states),
    textColor: Colors.white,
    fontSize: 16.0
);
enum ToastStates{SUCCESS,ERROR,WARING}

Color chooseToastColor(ToastStates states) {
  Color color;
  switch (states) {
    case ToastStates.SUCCESS:
      color = Colors.grey;
      break;
    case ToastStates.ERROR:
      color = Colors.red;
      break;
    case ToastStates.WARING:
      color = Colors.amber;
      break;
  }
  return color;
}
