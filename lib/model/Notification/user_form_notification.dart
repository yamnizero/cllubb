
import 'package:cllubb/shared/colors/colors.dart';
import 'package:cllubb/shared/components/compones.dart';
import 'package:flutter/material.dart';

class UserFormNotificationsModel
{
  String? title;
  String? time;
  String? imageUrl;

  UserFormNotificationsModel({
    @required this.title,
    @required this.time,
    @required this.imageUrl,
  });
}

class UserFormNotifications  extends StatelessWidget {
  // final UserFormNotificationsModel userFormNotificationsModel;
  final void Function()? onTap;
  const UserFormNotifications(
      // this.userFormNotificationsModel,
      {Key? key,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 23.0,
                backgroundImage: AssetImage(
                    kImage,
                    // userFormNotificationsModel.imageUrl!
                ),
              ),
              const SizedBox(width: 15,),
              //here want button => make posts page ------**
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ahmed commented on one of your updates',
                        // userFormNotificationsModel.title!,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyText1
                    ),
                  const   SizedBox(height: 5,),
                    Text(
                      '4 months ago ',
                      // userFormNotificationsModel.time!,
                      style: Theme.of(context).textTheme.caption,
                    ),

                  ],
                ),
              ),
            ],
          ),
          Divider(color: Colors.grey.withOpacity(0.5),thickness: 0.9,),
        ],
      ),
    );
  }
}