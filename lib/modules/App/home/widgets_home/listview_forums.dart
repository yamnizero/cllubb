import 'package:cllubb/model/Forums/user_form_forums.dart';
import 'package:flutter/material.dart';

class ListViewForums extends StatelessWidget {
  const ListViewForums({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context,index) => const UserFormForums(),
        separatorBuilder: (context,index) => const SizedBox(height: 15,),
        itemCount: 6,
      ),
    );
  }
}
