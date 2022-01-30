import 'package:cllubb/model/Activity/user_form_activity.dart';
import 'package:flutter/material.dart';

class ListViewActivity extends StatelessWidget {
  const ListViewActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (context,index) => const UserFormActivity(),
        separatorBuilder: (context,index) => const SizedBox(height: 15,),
        itemCount: 8,
      ),
    );
  }
}
