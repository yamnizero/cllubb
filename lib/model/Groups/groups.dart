import 'package:cllubb/shared/colors/colors.dart';
import 'package:flutter/material.dart';




class GroupsModel{
  String? title;
  String? type;
  String? imageUrl;
  GroupsModel(
      {
        @required this.title,
        @required this.type,
        @required this.imageUrl
      }
  );
}





class Groups extends StatelessWidget {
  // final GroupsModel groupsModel;
  final void Function()? onTap;
  const Groups(
      // this.groupsModel,
      {Key? key,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width*0.4,
        height:100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),
              elevation: 6.0,
              color: Colors.black,
              child: Image.asset(
                kImage,
                // groupsModel.imageUrl!,
                fit: BoxFit.fill,
                height: 100,
                width: 180,
              ),
            ),
             Text(
              'Business',
              // groupsModel.title!,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(height: 5,),
            // Text('Public / ${groupsModel.type}'),
             Text(
                'Public / Group',
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
    );
  }
}
