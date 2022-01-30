
import 'package:cllubb/model/Notification/user_form_notification.dart';
import 'package:flutter/material.dart';

class ListViewNotification extends StatelessWidget {
  const ListViewNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context,index) => const UserFormNotifications(),
        separatorBuilder: (context,index) =>const  SizedBox(height: 15,),
        itemCount:5,
      ),
    );
  }
}
