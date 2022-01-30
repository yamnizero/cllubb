import 'package:cllubb/model/My_Progress/my_progress.dart';
import 'package:flutter/material.dart';

class ListViewMyProgress extends StatelessWidget {
  const ListViewMyProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context,index) => const MyProgress(),
        separatorBuilder: (context,index) =>const  SizedBox(height: 15,),
        itemCount:3,
      ),
    );
  }
}
