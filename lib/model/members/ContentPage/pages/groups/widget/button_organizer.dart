

import 'package:cllubb/shared/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

Widget buttonOrganizer(
   context ,{
  required Function()? function,
  required String? text,
  required double? width,
  required double? height,
}) =>
    GestureDetector(
      onTap: function,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(25)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(MaterialIcons.check,color: Colors.black,),
            Text(
              text!,
              style: TextStyle(color: Colors.black,fontSize: 14),
            ),
          ],
        ),
      ),
    );













Widget? buttomSheetOrganizer(context) {
  showModalBottomSheet(context: context, builder: (BuildContext c)
  {
    return Wrap(
      children: [
        Container(
          color: Colors.grey.withOpacity(.1),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20.0,
                          backgroundImage:AssetImage(kImage),
                        ),
                        SizedBox(width: 15,),
                        Center(
                            child:
                            Text('Mohammed',
                              style: Theme.of(context).textTheme.bodyText2),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: CircleAvatar(
                            radius: 15.0,
                            backgroundColor: Colors.grey.shade300,
                            child: Icon(
                              Icons.close,
                              color: Colors.black26,
                              size: 15.0,
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Divider(height: 10,thickness: 1,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'Innovation is truly a confusing buzzword which many people love to hate.'
                              'Every business leader agrees that it is important.but nobody can quit semm'
                              'to agree on what it actually is or what it means.',
                          maxLines: 5,
                          overflow: TextOverflow.clip,
                          style:Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.5),
                          borderRadius: BorderRadius.circular(25.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: GestureDetector(
                          onTap: () {
                            showAlertDialogGroups(context);
                          },
                          child: Row(
                            children: [
                              Icon(Ionicons.log_out_sharp,size: 30,),
                              SizedBox(width: 10,),
                              Text("Leave",style: Theme.of(context).textTheme.bodyText1)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ],
    );
  }
  );
}


void showAlertDialogGroups(context)
{
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context)
      {
        return AlertDialog(
          backgroundColor: Colors.grey,
          title:  Text('Error while leaving group',style: Theme.of(context).textTheme.bodyText1,),
          content:  Text('As you are the only organizer of this group.you cannot leave it.You can either delete the group or promote '
              'another member to be an organizer first and then leave the group.',
            style: Theme.of(context).textTheme.bodyText2,
            maxLines: 5,
            overflow: TextOverflow.clip,
          ),
          actions: [
             TextButton (
                onPressed: () => Navigator.of(context).pop(),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey,
                  side: BorderSide(color: Colors.black, width: 1),
                ),
                child:  Text('Ok',style: Theme.of(context).textTheme.bodyText2,)
            )
          ],
        );
      }
  );
}
