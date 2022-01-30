import 'package:cllubb/shared/components/size_config.dart';
import 'package:flutter/material.dart';

import '../../../../model/members/user_form_members.dart';

class ListViewMember extends StatelessWidget {
  const ListViewMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (MediaQuery.of(context).size.height) / 9.5,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index) => const UserFormMembers(),
        separatorBuilder: (context,index) => const SizedBox(width: 15,),
        itemCount: 15,
      ),
    );
  }
}
