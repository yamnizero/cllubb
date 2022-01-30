
import 'package:cllubb/shared/components/compones.dart';
import 'package:flutter/material.dart';


 class UserFormActivityModel
 {
   String? title;
   String? time;
   String? imageUrl;

   UserFormActivityModel({
    required this.title,
     required this.time,
     required this.imageUrl,
  });
}



class UserFormActivity  extends StatelessWidget {
   // final UserFormActivityModel userFormActivityModel;
   final void Function()? onTap;
   const UserFormActivity(
       // this.userFormActivityModel,
       {Key? key,this.onTap}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return GestureDetector(
       onTap: onTap,
       child: Row(
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           const CircleAvatar(
             radius: 23.0,
             backgroundImage: AssetImage(
                 'assets/images/yamni.jpg'
                 // userFormActivityModel.imageUrl!
             ),
           ),
           const SizedBox(width: 15,),
           //here want button => make posts page ------**
           Expanded(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                     // userFormActivityModel.title!,
                   'Mohammed Posted an update',
                     maxLines: 3,
                     overflow: TextOverflow.ellipsis,
                     style: Theme.of(context).textTheme.bodyText1,
                 ),
                 const SizedBox(height: 5,),
                 Text(
                   // userFormActivityModel.time!,
                   '4 months ago',
                   style: Theme.of(context).textTheme.caption,
                 ),
                Divider(color: Colors.grey.withOpacity(0.5),thickness: 0.9,),
               ],
             ),
           ),

         ],
       ),
     );
   }
 }



