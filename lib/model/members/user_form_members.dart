
import 'package:flutter/material.dart';
class UserFormMembersModel {
  String? imageUrl;
  String? nameMem;
  String? nickName;
  UserFormMembersModel({required this.imageUrl,required this.nickName,required this.nameMem});
}


class UserFormMembers extends StatelessWidget {
  final void Function()? onTap;
  const UserFormMembers({Key? key,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: const [
              CircleAvatar(
                radius: 25.0,
                // backgroundImage:AssetImage(userFormMembersModel.imageUrl!),
                backgroundImage:AssetImage('assets/images/yamni.jpg'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



