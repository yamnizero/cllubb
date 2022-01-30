
import 'package:cllubb/model/Groups/groups.dart';
import 'package:flutter/material.dart';

class ListViewGroups extends StatelessWidget {
  const ListViewGroups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 165,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index) => const Groups() ,
          separatorBuilder: (context,index) => const SizedBox(width:8,),
          itemCount: 5,
        ),
      ),
    );
  }
}
