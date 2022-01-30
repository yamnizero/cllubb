

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MyProgressModel{
 // Icon icon1;
  String? title;
  IconData? icon;
  //IconData icon2;

  MyProgressModel({ //@required this.icon1,
    required this.title,
    required this.icon
// @required this.icon2}
  });
}


class MyProgress extends StatelessWidget {
  // final MyProgressModel myProgressModel;
  final void Function()? onTap;
  const MyProgress(
      // this.myProgressModel,
      {Key? key,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation:0.5,
        shadowColor: Colors.black,
        color: Theme.of(context).cardTheme.color,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children:  [
                  const  Icon(
                    FontAwesomeIcons.fileAlt,
                    // myProgressModel.icon,
                    size: 25.0,
                  ),
                 const SizedBox(width: 5,),
                  Text(
                      'Courses',
                    // myProgressModel.title!,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  // SizedBox(width:150),
                ],
              ),
               Icon(
                Icons.arrow_forward_ios,
                size: 15.0,
                color: Theme.of(context).iconTheme.color,
              ),
            ],
          ),
        ),
      ),
    );

    // ListTile(
    //   leading: Center(
    //       child: FaIcon(
    //         myProgressModel.icon!,
    //         color: Colors.white,
    //       )),
    //   title: Text(myProgressModel.title!),
    //   trailing:
    //   Icon(
    //     Icons.arrow_forward_ios,
    //     size: 20,
    //   ),
    //
    // ),


  }
}
