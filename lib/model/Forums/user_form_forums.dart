
import 'package:cllubb/shared/colors/colors.dart';
import 'package:cllubb/shared/components/compones.dart';
import 'package:flutter/material.dart';

class UserFormForums extends StatelessWidget {
  // final UserFormForumsModel userFormForumsModel;
  final void Function()? onTap;

  const UserFormForums(
      // this.userFormForumsModel,
      {Key? key, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              //here want button => make profile page ------**
              const  CircleAvatar(
                radius: 25.0,
                backgroundImage: AssetImage(
                    kImage,
                    // userFormForumsModel.imageUrl!,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              //here want button => make posts page ------**
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    // userFormForumsModel.title!,
                    'Mohammed',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                      // userFormForumsModel.description!,
                    'Description',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  const  SizedBox(
                    height: 5,
                  ),
                  Text(
                    // userFormForumsModel.time!,
                    '4 min',
                    style: Theme.of(context).textTheme.caption,
                  ),

                ],
              ),
            ],
          ),
          Divider(color: Colors.grey.withOpacity(0.5),thickness: 0.9,),
        ],
      ),
    );
  }
}

class UserFormForumsModel {
  String? title;
  String? description;
  String? imageUrl;
  String? time;

  UserFormForumsModel(
      {required this.title,
      required this.description,
      required this.imageUrl,
      required this.time});
}
